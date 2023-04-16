import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurant restaurant;
  const FoodList(this.selected, this.callback, this.restaurant, {super.key});

  @override
  Widget build(BuildContext context) {
    /// `final category = restaurant.menu.keys.toList();` is creating a list of all the keys in the
    /// `menu` map of the `restaurant` object and assigning it to the `category` variable. This list
    /// will be used to display the different food categories in the horizontal scrollable list.
    final category = restaurant.menu.keys.toList();
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => callback(index),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selected == index ? ccPrimaryColor : Colors.white,
            ),
            child: Text(
              category[index],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 20,
        ),
        itemCount: category.length,
      ),
    );
  }
}
