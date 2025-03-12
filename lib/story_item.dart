import 'package:flutter/material.dart';
import 'package:flutter_application_1/messenger_screen.dart';

class StoryItem extends StatelessWidget {
  StoryItem({super.key, required this.user});
  Users user;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 2,
        children: [
          Stack(
            children: [
              Container(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  child: Text(
                    "${user.name?[0]}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Colors.grey.shade200,
                ),
              ),
              Positioned(
                bottom: 5,
                right: 1,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 1,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 50,
            height: 16,
            child: Text(
              "${user.name}",
              style: TextStyle(fontSize: 12),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
