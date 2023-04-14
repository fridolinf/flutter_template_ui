import 'package:chatting_app/constants/colors.dart';
import 'package:chatting_app/screens/home/widgets/messages.dart';
import 'package:chatting_app/screens/home/widgets/recent_contacts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ccPrimary,
      body: Container(
        padding:

            /// `EdgeInsets.only(top: MediaQuery.of(context).padding.top)` is setting the padding
            /// of the container's top edge to the height of the device's status bar. This ensures
            /// that the content of the container is not hidden behind the status bar.
            /// `MediaQuery.of(context).padding.top` returns the height of the status bar of the
            /// device.
            EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Chat with\nyour friends',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            RecentContacts(),
            Messages(),
          ],
        ),
      ),
    );
  }
}
