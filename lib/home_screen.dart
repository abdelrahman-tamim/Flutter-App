import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int mynum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: const Text('Tamim'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
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
      body: Container(),
    );
  }
}
