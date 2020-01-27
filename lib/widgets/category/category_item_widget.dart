import 'package:flutter/material.dart';

import 'package:meals_app/models/category/category.dart';
import 'package:meals_app/pages/category_meals_page.dart';

class CategoryItemWidget extends StatelessWidget {
  final Category _category;

  const CategoryItemWidget(this._category);

  void _selectCategory(BuildContext context) =>
      Navigator.of(context).pushNamed(CategoryMealsPage.routeName, arguments: {
        'id': _category.id,
        'title': _category.title,
      });
  // .push(MaterialPageRoute(builder: (_) => CategoryMealsPage(_category.id, _category.title)));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          _category.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _category.color.withOpacity(0.7),
              _category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
