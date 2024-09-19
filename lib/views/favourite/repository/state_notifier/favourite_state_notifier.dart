import 'dart:convert';
import 'package:btc_mobile/views/favourite/repository/state/favourite_state.dart';
import 'package:btc_mobile/views/home/domain/btc_price.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavouriteStateNotifier extends StateNotifier<FavouriteState> {
  FavouriteStateNotifier() : super(const FavouriteState.initial());

  List<BTCPrice> favBtcPriceList = [];

  loadFavouriteData(BTCPrice btcPrice) async {
    if (!favBtcPriceList.contains(btcPrice)) {
      favBtcPriceList.add(btcPrice);
    } else {
      favBtcPriceList.remove(btcPrice);
    }
    state = FavouriteState.loadExcelData(favBtcPriceList);
    final prefs = await SharedPreferences.getInstance();
    List<String> favJsonDataList = favBtcPriceList
        .map((btcPrice) => jsonEncode(btcPrice.toJson()))
        .toList();
    await prefs.setStringList('favBtcPriceList', favJsonDataList);
  }

  Future<void> getFavoriteBTCPriceList() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? favJsonDataList = prefs.getStringList('favBtcPriceList');
    if (favJsonDataList != null) {
      List<BTCPrice> dataList = favJsonDataList
          .map((jsonString) => BTCPrice.fromJson(jsonDecode(jsonString)))
          .toList();
      state = FavouriteState.loadExcelData(dataList);
    }
  }

  Future<void> removeFavoriteBTCPriceList() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    state = const FavouriteState.loadExcelData([]);
  }
}
