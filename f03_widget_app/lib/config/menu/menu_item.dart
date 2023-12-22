import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final IconData icon;
  final String link;

  const MenuItem({
    required this.title,
    required this.icon,
    required this.link,
    required this.subTitle,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: "title",
      icon: Icons.credit_card,
      link: "/buttons",
      subTitle: "subTitle"),
  MenuItem(
      title: "title",
      icon: Icons.smart_button_outlined,
      link: "/cards",
      subTitle: "subTitle"),
];
