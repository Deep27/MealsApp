import 'package:flutter/material.dart';
import 'package:meals_app/widgets/drawers/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  SwitchListTile _buildSwitchListTile(String title, String description,
          bool currentValue, Function updateValue) =>
      SwitchListTile(
        title: Text(title),
        value: currentValue,
        subtitle: Text(description),
        onChanged: updateValue,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filters')),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Gluten-free',
                  'Include only gluten-free meals',
                  _glutenFree,
                  (newValue) => setState(() => _glutenFree = newValue),
                ),
                _buildSwitchListTile(
                  'Vegetarian',
                  'Include only vegetarian meals',
                  _vegetarian,
                  (newValue) => setState(() => _vegetarian = newValue),
                ),
                _buildSwitchListTile(
                  'Vegan',
                  'Include only vegan meals',
                  _vegan,
                  (newValue) => setState(() => _vegan = newValue),
                ),
                _buildSwitchListTile(
                  'Lactose-free',
                  'Include only lactose-free meals',
                  _lactoseFree,
                  (newValue) => setState(() => _lactoseFree = newValue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
