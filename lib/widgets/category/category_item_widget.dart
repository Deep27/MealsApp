import 'package:flutter/material.dart';

import 'package:meals_app/models/category.dart';

class CategoryItemWidget extends StatelessWidget {
  final Category _category;

  const CategoryItemWidget(this._category);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(_category.title),
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
    );
  }
}
