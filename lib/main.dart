import 'package:flutter/material.dart';

import 'package:meals_app/pages/categogies_page.dart';

const APP_NAME = 'DeliMeals';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoriesPage(),
    );
  }
}
