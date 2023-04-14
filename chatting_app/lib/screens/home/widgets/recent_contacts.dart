import 'package:chatting_app/models/user.dart';
import 'package:flutter/material.dart';

class RecentContacts extends StatelessWidget {
  final contactList = User.generateUsers();

  RecentContacts({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.only(left: 25),
      height: 50,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
            child: const Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: contactList[index].bgColor,
                          shape: BoxShape.circle),
                      child: Image.asset(
                        contactList[index].iconUrl,
                        width: 40,
                      ),
                    ),
                separatorBuilder: (_, index) => const SizedBox(width: 15),
                itemCount: contactList.length),
          )
        ],
      ),
    );
  }
}
