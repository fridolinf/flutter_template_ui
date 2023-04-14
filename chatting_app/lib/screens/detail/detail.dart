import 'package:chatting_app/constants/colors.dart';
import 'package:chatting_app/models/message.dart';
import 'package:chatting_app/screens/detail/widgets/contact_info.dart';
import 'package:chatting_app/screens/detail/widgets/detail_app_bar.dart';
import 'package:chatting_app/screens/detail/widgets/detail_message.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Message message;
  const DetailPage(this.message, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ccPrimary,
      body: Column(
        children: [
          const DetailAppBar(),
          ContactInfo(message),
          Expanded(
            child: DetailMessages(),
          ),
        ],
      ),
    );
  }
}
