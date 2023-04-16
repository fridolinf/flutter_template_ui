import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/detail/detail.dart';
import 'package:food_delivery_app/screens/home/widget/food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;
  const FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant,
      {super.key});
  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children:

            /// `category.map()` is creating a new list by applying the given function to each
            /// element of the `category` list. In this case, the function is creating a
            /// `ListView.separated` widget for each category, with each item in the list being a
            /// `GestureDetector` that navigates to the `DetailPage` when tapped, and displays a
            /// `FoodItem` widget. The `separatorBuilder` adds a `SizedBox` between each item in
            /// the list. Finally, the resulting list of `ListView.separated` widgets is returned
            /// as a list.
            category
                .map(
                  (e) => ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              /// `restaurant.menu[category[selected]]![index]` is accessing a specific
                              /// food item from the `menu` map of the `restaurant` object. The
                              /// `category[selected]` is the selected category of food, and `index` is
                              /// the index of the food item within that category. The exclamation mark
                              /// (`!`) is used to assert that the value at
                              /// `restaurant.menu[category[selected]]` is not null, as it is of type
                              /// `List<Food>?`.
                              restaurant.menu[category[selected]]![index],
                            ),
                          ),
                        );
                      },
                      child: FoodItem(
                        restaurant.menu[category[selected]]![index],
                      ),
                    ),
                    separatorBuilder: (_, index) => const SizedBox(height: 15),
                    itemCount: restaurant.menu[category[selected]]!.length,
                  ),
                )
                .toList(),
      ),
    );
  }
}
