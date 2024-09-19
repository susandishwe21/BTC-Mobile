import 'package:btc_mobile/views/chart/presentation/chart_screen.dart';
import 'package:btc_mobile/views/favourite/presentation/favourite_screen.dart';
import 'package:btc_mobile/views/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'views/bottom_nav/nav_bar.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int currentIndex = 0;
  List<Widget> indexWidgets = <Widget>[
    const HomeScreen(),
    const FavouriteScreen(),
    const ChartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: indexWidgets[currentIndex],
      bottomNavigationBar: bottomNavBarWidget(),
    );
  }

  Widget bottomNavBarWidget() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      items: navBarList
          .map(
            (nav) => BottomNavigationBarItem(
              icon: Icon(nav.selectedIcon),
              label: nav.title,
            ),
          )
          .toList(),
    );
  }
}
