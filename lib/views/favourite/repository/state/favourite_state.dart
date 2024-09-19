import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home/domain/btc_price.dart';
part 'favourite_state.freezed.dart';

extension Getters on FavouriteState {
  bool get isLoading => this is FavouriteLoading;
}

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.loadExcelData(List<BTCPrice> favBtcPriceList) =
      FavouriteData;
  const factory FavouriteState.initial() = Initial;
  const factory FavouriteState.loading() = FavouriteLoading;
  const factory FavouriteState.error({String? error}) = FavouriteError;
}
