import 'package:elearning_app/constants/colors.dart';
import 'package:elearning_app/screens/home/widgets/category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  const ActiveCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const CategoryTitle(
              leftText: "Currently Active", rightText: "view all"),
          Container(
            margin: const EdgeInsets.only(
              right: 25,
              left: 25,
              top: 15,
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ccFontLight.withOpacity(0.1),
              border: Border.all(
                color: ccFontLight.withOpacity(0.3),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/progress.png',
                        width: 60,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "as",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ccFont,
                          ),
                        ),
                        Text(
                          "2 Lesson things",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ccFontLight,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CircularPercentIndicator(
                  radius: 30.0,
                  lineWidth: 5.0,
                  percent: 0.61,
                  center: const Text(
                    '61%',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  progressColor: ccAccent,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
