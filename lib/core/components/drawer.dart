import 'package:flutter/material.dart';

class DrawerCard extends StatelessWidget {
  const DrawerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text("Menu")),
          ListTile(
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            title: Text("Forecast"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/forecast");
            },
          ),
        ],
      ),
    );
  }
}
