import 'dart:io';

import 'package:f03_widget_app/config/menu/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  static const String name = 'side_menu';

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<StatefulWidget> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 1;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    if (Platform.isAndroid) {}

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (index) {
        setState(() {
          navDrawerIndex = index;
        });

        final menuItem = appMenuItems[index];
        context.push(menuItem.link);
        widget.scaffoldKey.currentState!.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: Text('Flutter Go'),
        ),
        ...appMenuItems.sublist(0, 3).map((e) => NavigationDrawerDestination(
              icon: Icon(e.icon),
              label: Text(e.title),
            )),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
          child: Divider(),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
          child: Text('More options'),
        ),
        ...appMenuItems.sublist(3).map((e) => NavigationDrawerDestination(
              icon: Icon(e.icon),
              label: Text(e.title),
            )),
      ],
    );
  }
}
