import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Api_Provider.dart';
import 'package:flutter_application_1/Product_model.dart';
import 'package:flutter_application_1/chat_item.dart';
import 'package:flutter_application_1/story_item.dart';

class Users {
  String? name;
  String? message;
  String? time;
  Users({this.name, this.message, this.time});
}

class MessengerScreen extends StatefulWidget {
  MessengerScreen({super.key});

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  List<Users> users = [
    Users(
      name: "Abdelrahman Tamim",
      message: "Hi how are you doing?",
      time: "10:00 AM",
    ),
    Users(name: "Ali Saleh", message: "Are we meeting today?", time: "9:45 AM"),
    Users(name: "Omar Mazen", message: "I'll call you later.", time: "8:30 AM"),
    Users(
      name: "Abdelrahman Salama",
      message: "Good morning!",
      time: "7:50 AM",
    ),
    Users(
      name: "Omar Tariq",
      message: "Did you see my last message?",
      time: "11:15 PM",
    ),
    Users(
      name: "Aisha Noor",
      message: "Let's go out for lunch.",
      time: "2:20 PM",
    ),
    Users(
      name: "Kareem Adel",
      message: "Can you send me the document?",
      time: "6:00 PM",
    ),
    Users(name: "Nour Samir", message: "Where are you?", time: "5:30 PM"),
    Users(
      name: "Youssef Amr",
      message: "I'll be there in 5 minutes.",
      time: "4:45 PM",
    ),
    Users(
      name: "Fatima Zahra",
      message: "Call me when you're free.",
      time: "1:10 PM",
    ),
    Users(
      name: "Aisha Noor",
      message: "Let's go out for lunch.",
      time: "2:20 PM",
    ),
    Users(
      name: "Kareem Adel",
      message: "Can you send me the document?",
      time: "6:00 PM",
    ),
    Users(name: "Nour Samir", message: "Where are you?", time: "5:30 PM"),
    Users(
      name: "Youssef Amr",
      message: "I'll be there in 5 minutes.",
      time: "4:45 PM",
    ),
    Users(
      name: "Fatima Zahra",
      message: "Call me when you're free.",
      time: "1:10 PM",
    ),
  ];
  ProductModel? productmodel;
  bool isLoading = true;

  callGetProducts() async {
    productmodel = await ApiProvider().getProducts();
    print(productmodel?.products[0].images[0]);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    callGetProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Chats",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 0),
          child: CircleAvatar(
            child: Icon(Icons.person_2),
            backgroundColor: Colors.grey.shade200,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              spacing: 5,
              children: [
                CircleAvatar(
                  child: Icon(Icons.camera_alt),
                  backgroundColor: Colors.grey.shade200,
                ),
                CircleAvatar(
                  child: Icon(Icons.edit_sharp, color: Colors.black),
                  backgroundColor: Colors.grey.shade200,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: Icon(Icons.search),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 80,
              child:
                  isLoading
                      ? CircularProgressIndicator()
                      : ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return StoryItem(user: users[index]);
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 10);
                        },
                        itemCount: 10,
                      ),
            ),
            Expanded(
              child:
                  isLoading
                      ? CircularProgressIndicator()
                      : ListView.separated(
                        itemBuilder: (context, index) {
                          return ChatItem(
                            product: productmodel!.products[index],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 10);
                        },
                        itemCount: users.length,
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
