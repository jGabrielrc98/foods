import 'package:flutter/material.dart';
import 'package:foods/models/meal.dart';

import '../models/category.dart';
import '../data/dummy.data.dart';
import '../components/meal.item.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals =
        DUMMY_MEALS.where((Meal) {
          return Meal.categories.contains(category.id);
        }).toList();

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink, title: Text(category.title)),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
