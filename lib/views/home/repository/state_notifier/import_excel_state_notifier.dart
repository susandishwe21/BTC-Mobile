import 'dart:io';
import 'dart:isolate';
import 'package:excel/excel.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/btc_price.dart';
import '../state/import_excel_state.dart';

class ImportExcelStateNotifier extends StateNotifier<ImportExcelState> {
  ImportExcelStateNotifier() : super(const ImportExcelState.initial());
  List<BTCPrice> btcPricesList = [];

  Future<void> importExcelFile() async {
    state = const ImportExcelState.loading();
    btcPricesList.clear();
    try {
      ByteData data = await rootBundle.load('assets/bitcoin.xlsx');
      Uint8List bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      final directory = await getApplicationDocumentsDirectory();
      final path = '${directory.path}/BTCPrice.xlsx';
      final file = File(path)
        ..createSync(recursive: true)
        ..writeAsBytesSync(bytes);
      final selectedFilePath = file.path;
      btcPricesList = await processExcelWithIsolate(filePath: selectedFilePath);
      print("$btcPricesList");
      state = ImportExcelState.loadExcelData(btcPricesList);
    } catch (e) {
      state = const ImportExcelState.error();
      print("Error during file import: $e");
    }
  }

  Future<List<BTCPrice>> processExcelWithIsolate(
      {required String filePath}) async {
    final ReceivePort receivePort = ReceivePort();
    try {
      await Isolate.spawn(runTask, [receivePort.sendPort, filePath]);
      final response = await receivePort.first;
      return response;
    } catch (e) {
      return [];
    } finally {
      receivePort.close();
    }
  }

  static Future<void> runTask(List<dynamic> args) async {
    final SendPort sendPort = args[0];
    final String filePath = args[1];
    var bytes = await File(filePath).readAsBytes();
    var excel = Excel.decodeBytes(bytes);
    List<BTCPrice> btcPrices = [];
    for (var table in excel.tables.keys) {
      final tableSheet = excel.tables[table];
      for (var row in tableSheet!.rows) {
        // if (row.length < 5) continue;
        String startDate = row[0]?.value.toString() ?? '';
        String endDate = row[1]?.value.toString() ?? '';
        String openPrice = row[2]?.value.toString() ?? '';
        String high = row[3]?.value.toString() ?? '';
        String low = row[4]?.value.toString() ?? '';
        BTCPrice btcPrice = BTCPrice(
          startDate: startDate,
          endDate: endDate,
          openPrice: openPrice,
          high: high,
          low: low,
        );
        btcPrices.add(btcPrice);
      }
    }
    sendPort.send(btcPrices);
  }
}
