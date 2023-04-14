import 'package:elearning_app/constants/colors.dart';
import 'package:elearning_app/models/course.dart';
import 'package:elearning_app/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class CourseSection extends StatelessWidget {
  final Course course;
  const CourseSection({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: ccPrimaryLight,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      course.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              course.authorImage,
                              width: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              course.author,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              course.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: ccFont,
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: const [
                                  Icon(Icons.timer, size: 12),
                                  Text(
                                    "2h 22min",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: ccFontLight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ccAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      courseData: course,
                    ),
                  ),
                );
              },
              child: const Text("Start"),
            ),
          ),
        ],
      ),
    );
  }
}
