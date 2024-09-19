import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/btc_price.dart';
part 'import_excel_state.freezed.dart';

extension Getters on ImportExcelState {
  bool get isLoading => this is ImportLoading;
}

@freezed
class ImportExcelState with _$ImportExcelState {
  const factory ImportExcelState.loadExcelData(List<BTCPrice> btcPricesList) =
      ImportExcelData;
  const factory ImportExcelState.initial() = Initial;
  const factory ImportExcelState.loading() = ImportLoading;
  const factory ImportExcelState.error({String? error}) = ImportError;
}
