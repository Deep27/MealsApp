import 'package:flutter/material.dart';

import 'package:meals_app/main.dart';
import 'package:meals_app/data/category/dummy_data.dart';
import 'package:meals_app/widgets/category/category_item_widget.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(APP_NAME),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children:
            DUMMY_CATEGORIES.map((cat) => CategoryItemWidget(cat)).toList(),
      ),
    );
  }
}
