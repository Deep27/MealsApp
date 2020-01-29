import 'package:flutter/material.dart';
import 'package:meals_app/widgets/drawers/main_drawer.dart';

class FiltersScreen extends StatelessWidget {

  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filters')),
      drawer: MainDrawer(),
      body: Center(
        child: const Text('Filters will be here'),
      ),
    );
  }
}
