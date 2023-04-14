import 'package:chatting_app/constants/colors.dart';
import 'package:chatting_app/models/message.dart';
import 'package:chatting_app/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  final messagesList = Message.generateHomePageMessages();

  Messages({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(23),
            topRight: Radius.circular(23),
          ),
        ),
        child: _buildMessages(),
      ),
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => _buildMessage(context, index),
      separatorBuilder: (_, index) => const SizedBox(height: 30),
      itemCount: messagesList.length,
    );
  }

  Widget _buildMessage(BuildContext context, int index) {
    return

        /// `GestureDetector` is a widget that detects gestures made by the user on the screen. In
        /// this case, it is used to detect a tap gesture on a message in the list of messages. When
        /// a message is tapped, the `onTap` function is called, which navigates to the `DetailPage`
        /// passing the corresponding `Message` object as a parameter. The
        /// `Navigator.of(context).push` method is used to push the `DetailPage` onto the navigation
        /// stack, which allows the user to go back to the previous screen.
        GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(messagesList[index]),
          ),
        );
      },
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: messagesList[index].user.bgColor,
                shape: BoxShape.circle),
            child: Image.asset(
              messagesList[index].user.iconUrl,
              width: 60,
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${messagesList[index].user.firstName} ${messagesList[index].user.lastName}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: ccPrimaryDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      messagesList[index].lastTime,
                      style: const TextStyle(color: ccGreyLigth),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  messagesList[index].lastMessage,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: ccPrimaryDark),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
