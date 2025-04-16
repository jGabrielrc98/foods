import 'package:flutter/material.dart';
import 'package:foods/components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Center(child: Text('Configurações')),
    );
  }
}
