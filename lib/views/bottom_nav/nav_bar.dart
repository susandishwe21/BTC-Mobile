import 'package:flutter/material.dart';

class NavBar {
  int id;
  IconData selectedIcon;
  String title;

  NavBar({
    required this.id,
    required this.selectedIcon,
    required this.title,
  });
}

List<NavBar> navBarList = [
  NavBar(
    id: 0,
    selectedIcon: Icons.home,
    title: "Home",
  ),
  NavBar(
    id: 1,
    selectedIcon: Icons.favorite,
    title: "Favourite",
  ),
  NavBar(
    id: 2,
    selectedIcon: Icons.show_chart,
    title: "Chart",
  ),
];
