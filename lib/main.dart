import 'package:flutter/material.dart';

import 'package:meals_app/pages/categogies_page.dart';
import 'package:meals_app/pages/category_meals_page.dart';

const APP_NAME = 'DeliMeals';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.bold),
            ),
      ),
      home: CategoriesPage(),
      routes: {
        '/category-meals': (ctx) => CategoryMealsPage(),
      },
    );
  }
}
