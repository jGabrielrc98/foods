import 'package:flutter/material.dart';
import 'package:foods/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, void Function() onTap) {
    return ListTile(
      leading: Icon(icon, size: 26, color: Colors.black),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.amberAccent,
            alignment: Alignment.bottomRight,
            child: Text(
              'Vamos Cozinhar',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          _createItem(
            Icons.restaurant,
            'Refeições',
            () => Navigator.of(context).pushNamed(AppRoutes.HOME),
          ),
          _createItem(
            Icons.settings,
            'Configurações',
            () => Navigator.of(context).pushNamed(AppRoutes.SETTINGS),
          ),
        ],
      ),
    );
  }
}
