import 'package:elearning_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              border: Border.all(
                color: ccFontLight.withOpacity(0.3),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(26),
            ),
            child: TextField(
              cursorColor: ccFontLight,
              decoration: InputDecoration(
                fillColor: ccFontLight.withOpacity(0.1),
                filled: true, //set background inside text field
                contentPadding: const EdgeInsets.all(18),
                border:
                    InputBorder.none, //remove default border from TextField()
                hintText: "Search for history, classes...",
                hintStyle: const TextStyle(
                  color: ccFontLight,
                ),
              ),
            ),
          ),
          Positioned(
            right: 45,
            top: 35,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: ccAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                "assets/icons/search.png",
                width: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
