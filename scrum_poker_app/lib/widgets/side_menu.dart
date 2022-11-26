import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final menuOptions = AppRoutes.menuOptions;

    return Drawer(
      child: Column(
        children: [
          const _DrawerHeader(),
          /* Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                leading: Icon(menuOptions[index].icon),
                title: Text(menuOptions[index].name),
                // trailing: ,
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, menuOptions[index].route);
                },
              ),
              itemCount: menuOptions.length,
            ),
          ), */
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        
      ),
      child: Container(),
    );
  }
}
