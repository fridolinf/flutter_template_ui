import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:

          /// `const EdgeInsets.fromLTRB(10, 40, 10, 0)` is creating an instance of the
          /// `EdgeInsets` class with left padding of 10, top padding of 40, right padding of 10,
          /// and no bottom padding. This is used to add padding to the `Container` widget that
          /// contains the `Row` widget in the `DetailAppBar` class.
          const EdgeInsets.fromLTRB(10, 40, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Back',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Search',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
