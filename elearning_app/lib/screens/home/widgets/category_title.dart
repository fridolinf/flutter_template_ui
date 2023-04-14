import 'package:elearning_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  const CategoryTitle(
      {super.key, required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: ccFont,
            ),
          ),
          Text(
            rightText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: ccFontLight,
            ),
          ),
        ],
      ),
    );
  }
}
