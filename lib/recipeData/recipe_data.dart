class Recipe {
  String label;
  String imageUrl;

  //Add Servings and ingredients here

  Recipe(this.label, this.imageUrl);

  //  List<Recipe> here
  static List<Recipe> samples = [
    Recipe(
      'Banana',
      'assets/food_banana.jpg',
    ),
    Recipe(
      'Friedrice',
      'assets/food_friedrice.jpg',
    ),
    Recipe(
      'Spaghetti',
      'assets/food_spaghetti.jpg',
    ),
    Recipe(
      'Pancake',
      'assets/food_pancake.jpg',
    ),
    Recipe(
      'Flour',
      'assets/food_flour.jpg',
    ),
  ];
}

//Add ingredient() here
