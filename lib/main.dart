import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.pink,
          onPrimary: const Color.fromARGB(255, 255, 248, 224),
          secondary: Colors.amber,
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.white,
        ),
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'),
        ),
      ),
      home: CategoriesScreen(),
    );
  }
}
