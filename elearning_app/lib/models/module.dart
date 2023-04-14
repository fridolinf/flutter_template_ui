import 'package:elearning_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Module {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String description;
  Color moduleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lesson;

  Module(
    this.iconBorder,
    this.iconBg,
    this.iconColor,
    this.icon,
    this.title,
    this.description,
    this.moduleBorder,
    this.moduleBg,
    this.buttonColor,
    this.buttonFont,
    this.time,
    this.lesson,
  );

  /// The function generates a list of Module objects with different properties.
  ///
  /// Returns:
  ///   A list of two Module objects.
  static List<Module> generateModule() {
    return [
      Module(
          ccAccent,
          ccAccent,
          Colors.white,
          Icons.play_arrow_rounded,
          "Module 1",
          "Basic Plant Technologies",
          ccPrimaryLight,
          ccPrimaryLight,
          ccPrimary,
          ccPrimaryDark,
          "22 min",
          "15 lessons"),
      Module(
          ccAccent.withOpacity(0.3),
          ccAccent.withOpacity(0.3),
          Colors.white,
          Icons.lock,
          "Module 2",
          "Intermidate Plant Technologies",
          ccPrimaryLight.withOpacity(0.5),
          ccPrimaryLight.withOpacity(0.5),
          ccPrimary,
          ccPrimaryDark,
          "5 hours",
          "7 lessons"),
    ];
  }
}
