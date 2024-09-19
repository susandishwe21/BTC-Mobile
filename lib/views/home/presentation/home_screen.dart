import 'package:btc_mobile/views/home/repository/state/export_excel_state.dart';
import 'package:btc_mobile/views/home/repository/state/import_excel_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/btc_price.dart';
import '../repository/provider/home_provider.dart';
import 'widgets/loading_widget.dart';

List<BTCPrice> btcPriceList = [];

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool isExportLoading = false;
  bool isImportLoading = false;

  @override
  Widget build(BuildContext context) {
    ref.listen(exportExcelStateNotifierProvider, (pre, next) {
      if (next is ExportLoading) {
        setState(() {
          isExportLoading = true;
        });
      }
      if (next is ExportExcelSuccess) {
        setState(() {
          isExportLoading = false;
        });
      }
    });

    ref.listen(importExcelStateNotifierProvider, (pre, next) {
      if (next is ImportLoading) {
        setState(() {
          isImportLoading = true;
        });
      }
      if (next is ImportExcelData) {
        setState(() {
          btcPriceList = next.btcPricesList;
          isImportLoading = false;
        });
      }
      if (next is ImportError) {
        setState(() {
          isImportLoading = false;
        });
      }
    });
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
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
            onPressed: ref
                .read(importExcelStateNotifierProvider.notifier)
                .importExcelFile,
            icon: const Icon(
              Icons.import_export,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: ref
                .read(exportExcelStateNotifierProvider.notifier)
                .exportExcelFile,
            icon: const Icon(
              Icons.file_download,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: isExportLoading || isImportLoading
          ? loadingWidget(context)
          : ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const SizedBox.shrink();
                }
                return ListTile(
                  leading: Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/2048px-Bitcoin.svg.png",
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    btcPriceList[index].openPrice,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {
                    print("FAV ::: ");
                  },
                  trailing: IconButton(
                    onPressed: () {
                      print("FAV ::: ");
                    },
                    icon: const Icon(Icons.favorite_outline),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
              itemCount: btcPriceList.length,
            ),
    );
  }
}
