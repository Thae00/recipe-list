class Recipe {
  String label;
  String imageUrl;

  //Add Servings and ingredients here
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  //  List<Recipe> here
  static List<Recipe> samples = [
    Recipe(
      'Banana',
      'assets/food_banana.jpg',
      4,
      [
        Ingredient(
          1,
          'box',
          'Spaghetti',
        ),
        Ingredient(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
    Recipe(
      'Friedrice',
      'assets/food_friedrice.jpg',
      3,
      [
        Ingredient(
          1,
          'box',
          'Friedrice',
        ),
        Ingredient(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
    Recipe(
      'Spaghetti',
      'assets/food_spaghetti.jpg',
      4,
      [
        Ingredient(
          1,
          'box',
          'Spaghetti',
        ),
        Ingredient(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
    Recipe(
      'Pancake',
      'assets/food_pancake.jpg',
      4,
      [
        Ingredient(
          1,
          'box',
          'Pancake',
        ),
        Ingredient(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
    Recipe(
      'Flour',
      'assets/food_flour.jpg',
      4,
      [
        Ingredient(
          1,
          'box',
          'Flour',
        ),
        Ingredient(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
  ];
}

//Add ingredient() here
class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
