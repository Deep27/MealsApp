import 'package:flutter/material.dart';
import 'package:meals_app/data/category/dummy_data.dart';
import 'package:meals_app/widgets/meal/meal_item_widget.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  // final _categoryId;
  // final _categoryTitle;

  // CategoryMealsScreen(this._categoryId, this._categoryTitle);

  @override
  Widget build(BuildContext context) {
    final _routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final _categoryId = _routeArgs['id'];
    final _categoryTitle = _routeArgs['title'];
    final _categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(_categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(_categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItemWidget(
            title: _categoryMeals[i].title,
            imageUrl: _categoryMeals[i].imageUrl,
            duration: _categoryMeals[i].duration,
            affordability: _categoryMeals[i].affordability,
            complexity: _categoryMeals[i].complexity,
          );
        },
        itemCount: _categoryMeals.length,
      ),
    );
  }
}
