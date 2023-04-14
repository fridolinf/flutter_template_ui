import 'package:elearning_app/models/course.dart';
import 'package:elearning_app/screens/detail/widgets/course_description.dart';
import 'package:elearning_app/screens/detail/widgets/course_progress.dart';
import 'package:elearning_app/screens/detail/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Course courseData;
  const DetailPage({super.key, required this.courseData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(courseData: courseData),
          CourseDescription(courseData: courseData),
          CourseProgress()
        ],
      ),
    ));
  }
}
