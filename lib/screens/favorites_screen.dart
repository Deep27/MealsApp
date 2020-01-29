import 'package:flutter/material.dart';
import 'package:meals_app/models/meal/meal.dart';
import 'package:meals_app/widgets/meal/meal_item_widget.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> _favoriteMeals;

  FavoritesScreen(this._favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (_favoriteMeals.isEmpty) {
      return Center(child: Text('You have no favorites yet.'));
    } else {
      return ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItemWidget(_favoriteMeals[i]);
        },
        itemCount: _favoriteMeals.length,
      );
    }
  }
}
