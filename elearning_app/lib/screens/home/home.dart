import 'package:elearning_app/constants/colors.dart';
import 'package:elearning_app/screens/home/widgets/active_course.dart';
import 'package:elearning_app/screens/home/widgets/emoji_text.dart';
import 'package:elearning_app/screens/home/widgets/features_course.dart';
import 'package:elearning_app/screens/home/widgets/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const EmojiText(),
            const SearchInput(),
            FeaturesCourse(),
            const ActiveCourse(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBarWidget() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text("Hello Frelly!"),
      ),
      titleTextStyle: const TextStyle(color: kFontLight, fontSize: 16),
      actions: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 20, top: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: kFontLight.withOpacity(0.3),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 30,
              ),
            ),
            Positioned(
              top: 15,
              right: 30,
              child: Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: kAccent,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
