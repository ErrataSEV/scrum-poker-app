import 'package:flutter/material.dart';

import 'package:scrum_poker_app/models/models.dart';
import 'package:scrum_poker_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  /// Also all screens in the app
  static final menuOptions = <MenuOption>[
    MenuOption(
      name: 'Home',
      route: 'home',
      icon: Icons.home,
      screen: const HomeScreen(),
    ),
    MenuOption(
      name: 'Card',
      route: 'card',
      icon: Icons.text_snippet,
      screen: const CardScreen(),
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var menu in menuOptions) {
      appRoutes.addAll({menu.route: (_) => menu.screen});
    }

    return appRoutes;
  }
}
