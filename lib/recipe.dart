class Recipe{
  String label;
  String imageUrl;

  //TODO: add serving and ingredients here

  int serving;
  List<Ingredient>ingredients;

  Recipe(
    this.label,
    this.imageUrl,
    this.serving,
    this.ingredients,
    );
  
    //TODO:add list<recipe> here


     static List<Recipe> samples = [

      Recipe(
        'Spaghetti and Meatballs' ,
        'assets/spaghetti and meatballs.jpg',
        4,
        [
          Ingredient(1, 'box', 'Spaghetti',),
          Ingredient(4, '', 'Frozen Meatballs',),
          Ingredient(0.5, 'jar', 'Sauce',),
        ],
      ),
      Recipe(
        'tomato soup',
        'assets/tomato soup.jpg',
        2,
        [
          Ingredient(1, 'can', 'Tomato soup',),
        ],
      ),
      Recipe(
        'grilled cheese',
        'assets/grilled cheese.jpg',
        1,
        [
          Ingredient(2, 'slices', 'cheese',),
          Ingredient(2, 'slices', 'bread',),
        ],
      ),
      Recipe(
        'chocolate chip ckookies',
        'assets/chocolate chip cookies.jpg',
        24,
        [
          Ingredient(4, 'cups', 'flour',),
          Ingredient(2, 'cups', 'sugar',),
          Ingredient(4, 'cups', 'chocolate chips',),
        ],
      ),
      Recipe(
        'taco salad',
        'assets/taco salad.jpg',
        1,
        [
          Ingredient(4, 'oz', 'nachos',),
          Ingredient(3, 'oz', 'taco meat',),
          Ingredient(0.5, 'cup', 'cheese',),
          Ingredient(0.25, 'cup', 'chopped tomatoes',),
        ],
      ),
      Recipe(
        'hawaiian pizza',
        'assets/hawaiian pizza.jpg',
        4,
        [
          Ingredient(1, 'item', 'pizza',),
          Ingredient(1, 'cup', 'pineapple',),
          Ingredient(8, 'oz', 'ham',),
        ],
      ),

     ];
} 
  //TODO: ADD INGREDIENTS class here
class Ingredient{
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
