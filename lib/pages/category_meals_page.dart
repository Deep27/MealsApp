import 'package:flutter/material.dart';
import 'package:meals_app/data/category/dummy_data.dart';

class CategoryMealsPage extends StatelessWidget {
  static const routeName = '/category-meals';

  // final _categoryId;
  // final _categoryTitle;

  // CategoryMealsPage(this._categoryId, this._categoryTitle);

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
          return Text(_categoryMeals[i].title);
        },
        itemCount: _categoryMeals.length,
      ),
    );
  }
}
