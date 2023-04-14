import 'package:elearning_app/constants/colors.dart';
import 'package:elearning_app/models/course.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Course courseData;

  const CustomAppBar({super.key, required this.courseData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    courseData.imageUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: SizedBox(
              width: 110,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ccAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Start class",
                ),
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top, //get height of toolbar
            left: 25,
            child: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            right: 25,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.bookmark,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
