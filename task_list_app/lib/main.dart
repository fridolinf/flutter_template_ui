import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_list_app/screens/home/home.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// `SystemChrome.setSystemUIOverlayStyle()` is used to set the style of the system overlays that
    /// appear on top of the app, such as the status bar. In this case, it sets the status bar color to
    /// transparent, so that the app content can be displayed behind it.
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      home: HomePage(),
    );
  }
}
