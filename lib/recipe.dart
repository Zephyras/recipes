class Recipe {
  String label;
  String imageUrl;
  int serving;
  List<Ingredient> ingredients;
  Recipe(this.label, this.imageUrl, this.serving, this.ingredients);
}

class Ingredient {
  String name;
  String measure;
  double quantity;

  Ingredient(this.quantity, this.measure, this.name);
}

List<Recipe> recipes = [
  Recipe(
    'Spaghetti and Meatballs',
    'assets/bagandbook.jpeg',
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
    'Tomato Soup',
    'assets/bagandbook.jpeg',
    2,
    [
      Ingredient(
        1,
        'can',
        'Tomato Soup',
      ),
    ],
  ),
  Recipe(
    'Grilled Cheese',
    'assets/bagandbook.jpeg',
    1,
    [
      Ingredient(
        2,
        'slices',
        'Cheese',
      ),
      Ingredient(
        2,
        'slices',
        'Bread',
      ),
    ],
  ),
  Recipe(
    'Chocolate Chip Cookies',
    'assets/bagandbook.jpeg',
    24,
    [
      Ingredient(
        4,
        'cups',
        'flour',
      ),
      Ingredient(
        2,
        'cups',
        'sugar',
      ),
      Ingredient(
        0.5,
        'cups',
        'chocolate chips',
      ),
    ],
  ),
  Recipe(
    'Taco Salad',
    'assets/bagandbook.jpeg',
    1,
    [
      Ingredient(
        4,
        'oz',
        'nachos',
      ),
      Ingredient(
        3,
        'oz',
        'taco meat',
      ),
      Ingredient(
        0.5,
        'cup',
        'cheese',
      ),
      Ingredient(
        0.25,
        'cup',
        'chopped tomatoes',
      ),
    ],
  ),
  Recipe(
    'Hawaiian Pizza',
    'assets/bagandbook.jpeg',
    4,
    [
      Ingredient(
        1,
        'item',
        'pizza',
      ),
      Ingredient(
        1,
        'cup',
        'pineapple',
      ),
      Ingredient(
        8,
        'oz',
        'ham',
      ),
    ],
  ),
];
