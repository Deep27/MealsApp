import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final _routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final _title = _routeArgs['title'];
    final _id = _routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(
        child: const Text('Details'),
      ),
    );
  }
}
