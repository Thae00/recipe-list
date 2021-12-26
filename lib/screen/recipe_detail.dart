import 'package:flutter/material.dart';
import 'package:recipe_list/recipeData/recipe_data.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  RecipeDetail(this.recipe);
  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

// Add _RecipeDetailState here

class _RecipeDetailState extends State<RecipeDetail> {
  // Add _sliderVal here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              widget.recipe.label,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add Expanded
            //Add Slider() here
          ],
        ),
      ),
    );
  }
}
