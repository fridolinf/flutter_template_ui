import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/home/widget/food_list.dart';
import 'package:food_delivery_app/screens/home/widget/food_list_view.dart';
import 'package:food_delivery_app/screens/home/widget/restaurant_info.dart';
import 'package:food_delivery_app/widgets/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override

  /// This function creates and returns an instance of the _HomePageState class as the state of the
  /// HomePage widget.
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;

  /// `final pageController = PageController();` is creating an instance of the `PageController` class,
  /// which is used to control a `PageView` widget. It allows the user to swipe left or right to
  /// navigate between pages, and can also be used to programmatically change the current page. In this
  /// code, the `pageController` is used to synchronize the `FoodList` and `FoodListView` widgets, so
  /// that when the user taps on a food category in the `FoodList`, the `FoodListView` scrolls to the
  /// corresponding page.
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ccBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
          ),
          RestaurantInfo(),

          /// `FoodList(selected, (int index) { setState(() { selected = index; });
          /// pageController.jumpToPage(index); }, restaurant)` is creating an instance of the
          /// `FoodList` widget and passing in three parameters: `selected`, a callback function that
          /// updates the `selected` variable and jumps to the corresponding page in the `FoodListView`
          /// when the user taps on a food category, and the `restaurant` object. The `FoodList` widget
          /// displays a horizontal list of food categories, and when the user taps on a category, the
          /// `selected` variable is updated and the `FoodListView` scrolls to the corresponding page
          /// using the `pageController`.
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController,
              restaurant,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child:

                /// `SmoothPageIndicator` is a widget from the `smooth_page_indicator` package that
                /// displays a customizable indicator for a `PageView` widget. In this code, it is
                /// used to display a dot indicator at the bottom of the screen that shows the user
                /// which page they are currently on in the `FoodListView`. The `controller` property
                /// is set to the `pageController` instance, which allows the indicator to stay in
                /// sync with the `FoodListView`. The `count` property is set to the number of pages
                /// in the `FoodListView`, which is the length of the `menu` list in the `restaurant`
                /// object. The `effect` property is set to a `CustomizableEffect` instance, which
                /// allows the developer to customize the appearance of the dots. Finally, the
                /// `onDotClicked` property is set to a function that jumps to the corresponding page
                /// in the `FoodListView` when the user taps on a dot.
                SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect:

                  /// `CustomizableEffect` is a class from the `smooth_page_indicator` package that
                  /// allows the developer to customize the appearance of the dots in the
                  /// `SmoothPageIndicator` widget. In this code, it is used to define the
                  /// appearance of the dots when they are inactive (`dotDecoration`) and when they
                  /// are active (`activeDotDecoration`).
                  CustomizableEffect(
                dotDecoration:

                    /// `DotDecoration` is a class from the `smooth_page_indicator` package
                    /// that allows the developer to customize the appearance of the dots in
                    /// the `SmoothPageIndicator` widget. In this code, it is defining the
                    /// appearance of the dots when they are inactive. It sets the width and
                    /// height of the dot to 8, the color to a semi-transparent grey, and the
                    /// border radius to 8 to give the dot a rounded appearance.
                    DotDecoration(
                  width: 8,
                  height: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                  width: 10,
                  height: 10,
                  color: ccBackground,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: const DotBorder(
                    color: ccPrimaryColor,
                    padding: 2,
                    width: 2,
                  ),
                ),
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ccPrimaryColor,
        elevation: 2,
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
