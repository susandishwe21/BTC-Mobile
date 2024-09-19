import 'dart:io';

import 'package:btc_mobile/views/home/presentation/home_screen.dart';
import 'package:btc_mobile/views/home/repository/state/export_excel_state.dart';
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ExportExcelStateNotifier extends StateNotifier<ExportExcelState> {
  ExportExcelStateNotifier() : super(const ExportExcelState.initial());

  Future<void> exportExcelFile() async {
    state = const ExportExcelState.loading();

    var createExcelFile = Excel.createExcel();
    createExcelFile.rename("Sheet1", "BTC Prices");

    Sheet createSheet = createExcelFile['BTC Prices'];
    createSheet.appendRow([TextCellValue('BTC Price')]);
    for (var data in btcPriceList) {
      createSheet.appendRow([TextCellValue(data.openPrice)]);
    }
    final directory = await getExternalStorageDirectory();
    final path = '${directory!.path}/EarthlikeBTCPrice';

    if (!await Directory(path).exists()) {
      await Directory(path).create(recursive: true);
    }

    final filePath = '$path/BTCPrice.xlsx';
    final file = File(filePath);
    file.writeAsBytesSync(createExcelFile.encode()!);

    XFile xfile = XFile(filePath);
    Share.shareXFiles([xfile]);
    debugPrint('File saved to ::: $path');
    state = const ExportExcelState.success();
  }
}
