import 'package:flutter/material.dart';
import 'package:foods/screens/categories_meals_screen.dart';
import 'package:foods/utils/app_routes.dart';
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
          onSecondary: const Color.fromARGB(255, 255, 255, 255),
          error: Colors.red,
          onError: Color.fromRGBO(255, 254, 229, 1),
          surface: Color.fromRGBO(255, 254, 229, 1),
          onSurface: Color.fromRGBO(255, 255, 255, 1),
        ),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
      },
    );
  }
}
