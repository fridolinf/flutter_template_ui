import 'package:elearning_app/constants/colors.dart';
import 'package:elearning_app/models/module.dart';
import 'package:flutter/material.dart';

class CourseModule extends StatelessWidget {
  final Module module;
  const CourseModule({super.key, required this.module});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: module.iconBorder,
                      width: 2,
                    ),
                    color: module.iconBg,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    module.icon,
                    size: 30,
                    color: module.iconColor,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: List.generate(
                      20,
                      (index) => Expanded(
                        child: Container(
                          width: 2,
                          color: index % 2 == 0
                              ? Colors.transparent
                              : module.iconBorder,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: module.moduleBorder,
                  width: 2,
                ),
                color: module.moduleBg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        module.title,
                        style: const TextStyle(
                          color: ccFontLight,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: ccFontLight,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    module.description,
                    style: TextStyle(
                      fontSize: 18,
                      color: ccFont.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      _buildButton(
                        Icons.access_time_filled,
                        module.time,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      _buildButton(
                        Icons.bookmark,
                        module.lesson,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// This function returns a container with a button-like appearance, containing an icon and text.
  ///
  /// Args:
  ///   icon (IconData): Icon to be displayed in the button, represented by an IconData object.
  ///   text (String): A string that represents the text to be displayed on the button.
  ///
  /// Returns:
  ///   A container widget with a row of an icon and text inside it. The icon and text are passed as
  /// parameters to the function. The container has a decoration with a background color and a border
  /// radius.
  _buildButton(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: module.buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: module.buttonFont,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              color: module.buttonFont,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
