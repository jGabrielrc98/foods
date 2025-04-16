import 'package:flutter/material.dart';
import 'package:foods/screens/categories_screen.dart';
import 'package:foods/screens/favorite_screen.dart';
import '../components/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  final List<Map<String, Object>> _screens = [
    {'title': 'Lista de Categorias', 'screen': CategoriesScreen()},
    {'title': 'Meus Favoritos', 'screen': FavoriteScreen()},
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(
          child: Text(_screens[_selectedScreenIndex]['title'] as String),
        ),
      ),
      drawer: MainDrawer(),

      body: _screens[_selectedScreenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amberAccent,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
