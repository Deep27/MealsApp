import 'package:flutter/material.dart';
import 'package:meals_app/models/meal/meal.dart';
import 'package:meals_app/widgets/meal/meal_item_widget.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  final List<Meal> _availableMeals;

  CategoryMealsScreen(this._availableMeals);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String _categoryTitle;
  List<Meal> _displayedMeals;
  bool _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      super.didChangeDependencies();
      final _routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      final _categoryId = _routeArgs['id'];
      _categoryTitle = _routeArgs['title'];
      _displayedMeals = widget._availableMeals
          .where((meal) => meal.categories.contains(_categoryId))
          .map((meal) {
        return meal;
      }).toList();
      _loadedInitData = true;
    }
  }

  void _removeMeal(String mealId) {
    setState(() {
      _displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItemWidget(_displayedMeals[i]);
        },
        itemCount: _displayedMeals.length,
      ),
    );
  }
}
