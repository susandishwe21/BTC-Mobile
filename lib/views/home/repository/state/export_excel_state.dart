import 'package:freezed_annotation/freezed_annotation.dart';
part 'export_excel_state.freezed.dart';

extension Getters on ExportExcelState {
  bool get isLoading => this is ExportLoading;
}

@freezed
class ExportExcelState with _$ExportExcelState {
  const factory ExportExcelState.success() = ExportExcelSuccess;
  const factory ExportExcelState.initial() = Initial;
  const factory ExportExcelState.loading() = ExportLoading;
  const factory ExportExcelState.error({String? error}) = Error;
}
