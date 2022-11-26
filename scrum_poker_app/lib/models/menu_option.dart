import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final IconData icon;
  final String name;
  final String route;
  final Widget screen;

  MenuOption({
    required this.name,
    required this.route,
    required this.icon,
    required this.screen,
  });
}
