import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/BMI_Result.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  int age = 25;
  int wight = 75;
  double hight = 170;
  num result = 100;
  bool gender = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF24263B),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xff1C2135),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            gender = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 25,
                            horizontal: 35,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color:
                                gender ? Color(0xff24263B) : Color(0xff333244),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.male, color: Colors.white, size: 80),
                              Text(
                                "Male",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            gender = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color:
                                gender ? Color(0xff333244) : Color(0xff24263B),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.female, color: Colors.white, size: 80),
                              Text(
                                "Female",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff333244),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        child: Column(
                          spacing: 4,
                          children: [
                            Text(
                              "Hight",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            Row(
                              spacing: 4,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${hight.round()}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  "cm",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Slider(
                              value: hight,
                              onChanged: (value) {
                                setState(() {
                                  hight = value;
                                });
                              },
                              min: 100,
                              max: 210,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xff333244),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "$wight",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                            Row(
                              spacing: 15,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  heroTag: "wight++",
                                  onPressed: () {
                                    setState(() {
                                      wight++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  heroTag: "wight--",
                                  onPressed: () {
                                    setState(() {
                                      wight--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xff333244),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "$age",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                            Row(
                              spacing: 15,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  heroTag: "age++",
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  heroTag: "age--",
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xff1C2135),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xffE83D67)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          result = wight / pow(hight / 100, 2);
                        });
                        Future.delayed(Duration.zero, () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => BmiResult(
                                    age: age,
                                    wight: wight,
                                    hight: hight,
                                    gender: gender,
                                    result: result,
                                  ),
                            ),
                          );
                        });
                      },
                      child: Container(
                        child: Text(
                          "Calculate",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
