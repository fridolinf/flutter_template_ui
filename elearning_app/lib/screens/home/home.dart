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
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ccBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: "home",
          icon: Container(
            padding: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ccAccent,
                  width: 2,
                ),
              ),
            ),
            child: const Text(
              "Home",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "calendar",
          icon: Image.asset(
            "assets/icons/calendar.png",
            width: 20,
          ),
        ),
        BottomNavigationBarItem(
          label: "bookmark",
          icon: Image.asset(
            "assets/icons/bookmark.png",
            width: 20,
          ),
        ),
        BottomNavigationBarItem(
          label: "user",
          icon: Image.asset(
            "assets/icons/user.png",
            width: 20,
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBarWidget() {
    return AppBar(
      backgroundColor: ccBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text("Hello Frelly!"),
      ),
      titleTextStyle: const TextStyle(color: ccFontLight, fontSize: 16),
      actions: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 20, top: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: ccFontLight.withOpacity(0.3),
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
                  color: ccAccent,
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
