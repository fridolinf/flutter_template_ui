import 'package:elearning_app/constants/colors.dart';
import 'package:elearning_app/models/module.dart';
import 'package:elearning_app/screens/detail/widgets/course_module.dart';
import 'package:flutter/material.dart';

class CourseProgress extends StatelessWidget {
  final moduleList = Module.generateModule();
  CourseProgress({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "The progress",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: ccFont,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/grid.png',
                    width: 25,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'assets/icons/list.png',
                    width: 25,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ...moduleList.map((e) => CourseModule(module: e)).toList(),
        ],
      ),
    );
  }
}
