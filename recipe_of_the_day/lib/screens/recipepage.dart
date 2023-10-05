import 'package:flutter/material.dart';
import 'package:recipe_of_the_day/model/recipe_model.dart';

class RecipePage extends StatelessWidget {
  RecipePage({super.key});

  final recipe = Recipe.recipe();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(children: [
                    Image.network(
                      recipe[index].imageUrl,
                      fit: BoxFit.cover,
                      height: 150,
                      width: double.infinity,
                    ),
                    Text(recipe[index].title),
                  ]),
                ),
              );
            },
            itemCount: recipe.length,
          ),
        ),
      ),
    );
  }
}
