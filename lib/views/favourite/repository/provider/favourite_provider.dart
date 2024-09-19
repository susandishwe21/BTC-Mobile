import 'package:btc_mobile/views/favourite/repository/state/favourite_state.dart';
import 'package:btc_mobile/views/favourite/repository/state_notifier/favourite_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favouriteStateNotifierProvider =
    StateNotifierProvider<FavouriteStateNotifier, FavouriteState>(
        (ref) => FavouriteStateNotifier());
