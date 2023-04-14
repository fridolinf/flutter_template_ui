import 'package:elearning_app/constants/colors.dart';
import 'package:elearning_app/models/course.dart';
import 'package:flutter/material.dart';

class CourseDescription extends StatelessWidget {
  final Course courseData;

  const CourseDescription({super.key, required this.courseData});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                courseData.authorImage,
                width: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                courseData.author,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: 5,
                width: 5,
                decoration: const BoxDecoration(
                  color: ccFontLight,
                  shape: BoxShape.circle,
                ),
              ),
              const Icon(
                Icons.access_time_filled,
                size: 20,
                color: ccAccent,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "1h 35 min",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: ccFont,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            courseData.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: ccFont,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "How we can integrate with Plant Technologies in our entire life.",
            style: TextStyle(
              wordSpacing: 2,
              fontWeight: FontWeight.bold,
              color: ccFontLight,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
