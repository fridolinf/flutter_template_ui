import 'package:chatting_app/constants/colors.dart';
import 'package:chatting_app/models/message.dart';
import 'package:flutter/material.dart';

class DetailMessages extends StatelessWidget {
  final myId = 0;
  final list = Message.generateMessagesFromUser();

  /// `final _scrollController = ScrollController();` creates a new instance of `ScrollController` and
  /// assigns it to a private final variable `_scrollController`. This controller is used to control the
  /// scrolling behavior of the `ListView` in the `DetailMessages` widget. It allows the widget to
  /// scroll to a specific position or animate the scroll position to a specific offset.
  final _scrollController = ScrollController();

  DetailMessages({super.key});
  @override
  Widget build(BuildContext context) {
    var messageList = List.from(list.reversed);
    return SizedBox(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.fromLTRB(25, 50, 25, 95),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView.separated(
              reverse: true,
              controller: _scrollController,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) =>
                  messageList[index].user.id == myId
                      ? _buildReceivedText(messageList[index])
                      : _buildSenderText(messageList[index]),
              separatorBuilder: (_, index) => const SizedBox(height: 20),
              itemCount: messageList.length,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: 310,
              child: Stack(
                children: [
                  TextField(
                    onTap: () {
                      /// `_scrollController.animateTo()` is a method that animates the scroll position
                      /// of a `ListView` to a specific offset. In this case, it is used to scroll the
                      /// `ListView` to the top when the user taps on the `TextField` to enter a new
                      /// message. The `0` offset value means that the `ListView` will be scrolled to
                      /// the very top, and the `duration` and `curve` parameters control the speed and
                      /// animation curve of the scrolling animation.
                      _scrollController.animateTo(
                        0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    },
                    decoration: InputDecoration(
                      fillColor: ccGreyLigth.withOpacity(0.2),
                      filled: true,
                      contentPadding: const EdgeInsets.all(18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Type your message...',
                      hintStyle: TextStyle(
                        color: ccPrimaryDark.withOpacity(0.3),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 7,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: ccPrimary,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildReceivedText(Message message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          message.lastTime,
          style: const TextStyle(
            color: ccGreyLigth,
            fontSize: 12,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: ccPrimaryLigth,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 180),
            child: Text(
              message.lastMessage,
              style: const TextStyle(height: 1.5, color: ccPrimaryDark),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSenderText(Message message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            message.isContinue
                ? const SizedBox(width: 40)
                : Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: message.user.bgColor, shape: BoxShape.circle),
                    child: Image.asset(
                      message.user.iconUrl,
                      width: 30,
                    ),
                  ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ccGreyLigth.withOpacity(0.2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 180),
                child: Text(
                  message.lastMessage,
                  style: const TextStyle(height: 1.5, color: ccPrimaryDark),
                ),
              ),
            )
          ],
        ),
        Text(
          message.lastTime,
          style: const TextStyle(color: ccGreyLigth, fontSize: 12),
        )
      ],
    );
  }
}
