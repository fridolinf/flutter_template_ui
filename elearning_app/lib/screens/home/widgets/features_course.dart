import 'package:elearning_app/models/course.dart';
import 'package:elearning_app/screens/home/widgets/category_title.dart';
import 'package:elearning_app/screens/home/widgets/course_section.dart';
import 'package:flutter/material.dart';

class FeaturesCourse extends StatelessWidget {
  final coursesList = Course.generateCourse();
  FeaturesCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const CategoryTitle(
            leftText: "Top of the week",
            rightText: "view all",
          ),
          SizedBox(
            height: 300,
            child: ListView.separated(
              padding: const EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList.length,
              itemBuilder: (context, index) => CourseSection(
                course: coursesList[index],
              ),
              separatorBuilder: (
                BuildContext context,
                index,
              ) =>
                  const SizedBox(
                width: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
