import 'package:flutter/material.dart';

class User {
  num id;
  String firstName;
  String lastName;
  String iconUrl;
  Color bgColor;
  User(
    this.id,
    this.firstName,
    this.lastName,
    this.iconUrl,
    this.bgColor,
  );

  static List<User> generateUsers() {
    return [
      User(
        1,
        'Cecily',
        'Trujillo',
        'assets/images/user1.png',
        const Color(0xFFFDBEC8),
      ),
      User(
        2,
        'Alaya',
        'Cordova',
        'assets/images/user2.png',
        const Color(0xFFFED6C4),
      ),
      User(
        3,
        'Eathan',
        'Sheridan',
        'assets/images/user3.png',
        const Color(0xFFA8E4F2),
      ),
      User(
        4,
        'Justin',
        'O,Moore',
        'assets/images/user4.png',
        const Color(0xFFFFE5A7),
      ),
      User(
        5,
        'Komal',
        'Orr',
        'assets/images/user5.png',
        const Color(0xFFC3C1E6),
      ),
      User(
        6,
        'Mike',
        'Jhon',
        'assets/images/user6.png',
        const Color(0xFFFD95A2),
      ),
    ];
  }
}
