import 'package:btc_mobile/views/home/repository/state/export_excel_state.dart';
import 'package:btc_mobile/views/home/repository/state/import_excel_state.dart';
import 'package:btc_mobile/views/home/repository/state_notifier/export_excel_state_notifier.dart';
import 'package:btc_mobile/views/home/repository/state_notifier/import_excel_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final exportExcelStateNotifierProvider =
    StateNotifierProvider<ExportExcelStateNotifier, ExportExcelState>(
        (ref) => ExportExcelStateNotifier());

final importExcelStateNotifierProvider =
    StateNotifierProvider<ImportExcelStateNotifier, ImportExcelState>(
        (ref) => ImportExcelStateNotifier());
