class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;

  /// `List<Map<String, String>> ingredients;` is declaring a list of maps where each map has a key of
  /// type `String` and a value of type `String`. This is used to store the ingredients of a food item,
  /// where each ingredient is represented as a key-value pair in the map. The list allows for multiple
  /// ingredients to be stored for a single food item.
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;
  Food(
    this.imgUrl,
    this.desc,
    this.name,
    this.waitTime,
    this.score,
    this.cal,
    this.price,
    this.quantity,
    this.ingredients,
    this.about, {
    this.hightLight = false,
  });
  static List<Food> generateRecommendFoods() {
    return [
      Food(
        'assets/images/dish1.png',
        'No1. in Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        1,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
        hightLight: true,
      ),
      Food(
        'assets/images/dish2.png',
        'Low Fat',
        'Sai Ua Samun Phrai',
        '50 min',
        4.8,
        '325 kcal',
        18,
        0,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
      ),
      Food(
        'assets/images/dish3.png',
        'Highly Recommended',
        'Ratatouille Pasta',
        '50 min',
        4.8,
        '325 kcal',
        17,
        0,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
      ),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
        'assets/images/dish4.png',
        'Most Popular',
        'Tomato Checken',
        '50 min',
        4.8,
        '325 kcal',
        14.5,
        0,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
      ),
      Food(
        'assets/images/dish1.png',
        'No1. in Sales',
        'Soba Soup',
        '50 min',
        4.8,
        '325 kcal',
        12,
        0,
        [
          {
            'Noodle': 'assets/images/ingre1.png',
          },
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          },
        ],
        'Simply put, ramen is a Japanese noodle soup, with a combination of a rich flavoured broth, one of a variety of types of noodle and a selection of meats or vegetables, often topped with a boiled egg.',
        hightLight: true,
      ),
    ];
  }
}
