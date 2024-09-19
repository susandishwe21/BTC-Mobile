import 'dart:io';

import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> exportExcelFile() async {
    var createExcelFile = Excel.createExcel();
    createExcelFile.rename("Sheet1", "BTC Prices");
    Sheet createSheet = createExcelFile['BTC Prices'];
    createSheet.appendRow([TextCellValue('BTC Price')]);
    // for (var data in openPrices) {
    //   sheetObject.appendRow([TextCellValue(data)]);
    // }
    final directory = await getExternalStorageDirectory();
    final path = '${directory!.path}/EarthlikeBTCPrice';
    final directoryFolder = Directory(path);
    if (!await directoryFolder.exists()) {
      await directoryFolder.create(recursive: true);
    }
    final filePath = '$path/BTCPrice.xlsx';
    final file = File(filePath);
    file.writeAsBytesSync(createExcelFile.encode()!);
    XFile xfile = XFile(filePath);
    Share.shareXFiles([xfile]);
    debugPrint('File saved to ::: $path');
  }

  Future<void> importExcelFile() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.import_export,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: exportExcelFile,
            icon: const Icon(
              Icons.file_download,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Container(),
    );
  }
}
