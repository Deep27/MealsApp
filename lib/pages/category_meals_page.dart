import 'package:flutter/material.dart';

class CategoryMealsPage extends StatelessWidget {

  // final _categoryId;
  // final _categoryTitle;

  // CategoryMealsPage(this._categoryId, this._categoryTitle);

  @override
  Widget build(BuildContext context) {
    final _routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final _categoryId = _routeArgs['id'];
    final _categoryTitle = _routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(_categoryTitle),
      ),
      body: Center(
        child: Text('The Recipes For The Category!'),
      ),
    );
  }
}
