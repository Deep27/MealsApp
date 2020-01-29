import 'package:flutter/material.dart';
import 'package:meals_app/data/category/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  final Function _toggleFavorite;
  final Function _isFavorite;

  MealDetailScreen(this._toggleFavorite, this._isFavorite);

  Container _buildSectionTitle(BuildContext context, String title) => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
      );

  Container _buildContainer(Widget child) => Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    final _routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final _id = _routeArgs['id'];
    final _selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == _id);

    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedMeal.title),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              _selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          _buildSectionTitle(context, 'Ingredients:'),
          _buildContainer(
            ListView.builder(
              itemCount: _selectedMeal.ingredients.length,
              itemBuilder: (ctx, index) => Card(
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child:
                      Text('${index + 1}. ${_selectedMeal.ingredients[index]}'),
                ),
              ),
            ),
          ),
          _buildSectionTitle(context, 'Steps:'),
          _buildContainer(
            ListView.builder(
              itemCount: _selectedMeal.steps.length,
              itemBuilder: (ctx, index) => Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text(_selectedMeal.steps[index]),
                  ),
                  Divider(color: Theme.of(context).primaryColor),
                ],
              ),
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(_isFavorite(_id) ? Icons.star : Icons.star_border),
        onPressed: () => _toggleFavorite(_id),
      ),
    );
  }
}
