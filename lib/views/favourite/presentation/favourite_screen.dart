import 'package:btc_mobile/views/favourite/repository/provider/favourite_provider.dart';
import 'package:btc_mobile/views/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/domain/btc_price.dart';
import '../repository/state/favourite_state.dart';

class FavouriteScreen extends ConsumerStatefulWidget {
  const FavouriteScreen({super.key});

  @override
  ConsumerState<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends ConsumerState<FavouriteScreen> {
  List<BTCPrice> favBtcPriceList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(favouriteStateNotifierProvider.notifier).getFavoriteBTCPriceList();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(favouriteStateNotifierProvider, (pre, next) {
      if (next is FavouriteData) {
        setState(() {
          favBtcPriceList = next.favBtcPriceList;
        });
      }
    });

    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Favourite",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
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
              favBtcPriceList[index].openPrice,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            onTap: () {
              ref
                  .read(favouriteStateNotifierProvider.notifier)
                  .loadFavouriteData(favBtcPriceList[index]);
            },
            trailing: Icon(
              btcPriceList.contains(favBtcPriceList[index])
                  ? Icons.favorite
                  : Icons.favorite_outline,
              color: btcPriceList.contains(favBtcPriceList[index])
                  ? Colors.orange
                  : Colors.black.withOpacity(0.7),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
        itemCount: favBtcPriceList.length,
      ),
    );
  }
}
