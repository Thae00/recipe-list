import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_list/recipeData/recipe_data.dart';
import 'package:recipe_list/screen/recipe_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Calculator',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: Colors.lightGreen,
        secondary: Colors.greenAccent,
      )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Lists"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (context, index) {
            // Update to return Recipe card

            //Add GestureDetector
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // Replace return with return RecipeDetail()
                  return RecipeDetail(Recipe.samples[index]);
                }));
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }
}

//Create custom widget
Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image(
            image: AssetImage(recipe.imageUrl),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            recipe.label,
          ),
        ],
      ),
    ),
  );
}
