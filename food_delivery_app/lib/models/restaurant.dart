import 'package:food_delivery_app/models/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;

  /// `Map<String, List<Food>> menu;` is declaring a property named `menu` of type `Map` with a key of
  /// `String` and a value of `List<Food>`. This property is used to store the menu items of the
  /// restaurant, where the key represents the category of the menu items (e.g. "Recommend", "Popular",
  /// "Noodles", etc.) and the value is a list of `Food` objects that belong to that category.
  Map<String, List<Food>> menu;
  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu,
  );
  static Restaurant generateRestaurant() {
    return Restaurant(
      'Japanese Restaurant',
      '20-30 min',
      '2.4km',
      'Japan Food',
      'assets/images/res_logo.png',
      'Orange sandwiches is delicious',
      4.7,
      {
        'Recommend': Food.generateRecommendFoods(),
        'Popular': Food.generatePopularFoods(),
        'Noodles': [],
        'Pizza': [],
        'Shrimp': [],
        'Cow': [],
      },
    );
  }
}
