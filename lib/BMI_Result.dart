import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  BmiResult({
    super.key,
    required this.age,
    required this.wight,
    required this.hight,
    required this.gender,
    required this.result,
  });
  int age;
  int wight;
  double hight;
  bool gender;
  num result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF24263B),
        title: Text("Results", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xff333244)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender: ${gender ? "male" : "female"}",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Text(
              "Age: $age",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Text(
              "Result: ${result.round()}",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
