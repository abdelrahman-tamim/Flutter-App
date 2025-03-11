import 'package:flutter/material.dart';
import 'package:flutter_application_1/messenger_screen.dart';

class ChatItem extends StatelessWidget {
  ChatItem({super.key, required this.user});
  Users user;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CircleAvatar(
          child: Text(
            "${user.name?.split("")[0]}",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${user.name}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(child: Text("${user.message}")),
                  Text("${user.time}"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
