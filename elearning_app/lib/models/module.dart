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

  static List<Module> generateModule() {
    return [
      Module(
          kAccent,
          kAccent,
          Colors.white,
          Icons.play_arrow_rounded,
          "Module 1",
          "Basic Plant Technologies",
          kPrimaryLight,
          kPrimaryLight,
          kPrimary,
          kPrimaryDark,
          "22 min",
          "15 lessons"),
      Module(
          kAccent.withOpacity(0.3),
          kAccent.withOpacity(0.3),
          Colors.white,
          Icons.lock,
          "Module 2",
          "Intermidate Plant Technologies",
          kPrimaryLight.withOpacity(0.5),
          kPrimaryLight.withOpacity(0.5),
          kPrimary,
          kPrimaryDark,
          "5 hours",
          "7 lessons"),
    ];
  }
}
