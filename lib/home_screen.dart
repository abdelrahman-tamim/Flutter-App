import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int mynum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff89AC46),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: const Text('Cafe A tor'),
        centerTitle: true,
        backgroundColor: Color(0xffFF8989),
        actions: [
          Icon(Icons.search),
          IconButton(
            onPressed: () {
              setState(() {
                mynum++;
              });
            },
            icon: Text("$mynum"),
          ),
        ],
      ),
      body: Row(
        children: [
          Container(
            color: Color(0xffF8ED8C),
            height: double.infinity,
            width: 100,
            child: Column(children: []),
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 100, width: 80, color: Colors.amberAccent),
                Container(height: 100, width: 80, color: Colors.red),
              ],
            ),
          ),
          Container(
            color: Color(0xffD3E671),
            height: double.infinity,
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
