import 'package:flutter/material.dart';
import 'package:foods/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  Widget _createSectionTitle(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(title, style: Theme.of(context).textTheme.titleMedium),
    );
  }

  Widget _creatSectionContainer(Widget child) {
    return Container(
      width: 300,
      height: 250,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink, title: Text(meal.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(meal.imageUrl, fit: BoxFit.cover),
            ),
            _createSectionTitle(context, 'Ingredients'),
            _creatSectionContainer(
              ListView.builder(
                itemCount: meal.ingredients.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(meal.ingredients[index]),
                    ),
                    color: Colors.accents.first,
                  );
                },
              ),
            ),
            _createSectionTitle(context, 'Passos'),
            _creatSectionContainer(
              ListView.builder(
                itemCount: meal.steps.length,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(child: Text('${index + 1}')),
                        title: Text(
                          meal.steps[index],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
