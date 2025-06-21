import 'package:demo/constant.dart';
import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({super.key});

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: kActiveTextColor),
        ),
        backgroundColor: kBackgroundColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        color: kTileColor,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Icon(Icons.male, size: 50, color: kActiveTextColor),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 24,
                                color: kActiveTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        color: kTileColor,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Icon(
                              Icons.female,
                              size: 50,
                              color: kInactiveTextColor,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: 24,
                                color: kInactiveTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  color: kTileColor,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(fontSize: 24, color: kActiveTextColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "183",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: kActiveTextColor,
                            ),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kActiveTextColor,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        min: 80,
                        max: 200,
                        value: 183,
                        onChanged: (value) {},
                        thumbColor: kButtonColor,
                        activeColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        color: kTileColor,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(color: kActiveTextColor),
                            ),
                            Text(
                              "74",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: kActiveTextColor,
                              ),
                            ),
                            Text("kg"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(),
                                    CircleBorder(),
                                    0.5,
                                  ),
                                  backgroundColor: kBackgroundColor,
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.remove,
                                    color: kActiveTextColor,
                                  ),
                                ),
                                SizedBox(width: 20),
                                FloatingActionButton(
                                  elevation: 0,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(),
                                    CircleBorder(),
                                    0.5,
                                  ),
                                  backgroundColor: kBackgroundColor,
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.add,
                                    color: kActiveTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        color: kTileColor,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              "Height",
                              style: TextStyle(color: kActiveTextColor),
                            ),
                            Text(
                              "174",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: kActiveTextColor,
                              ),
                            ),
                            Text("kg"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(),
                                    CircleBorder(),
                                    0.5,
                                  ),
                                  backgroundColor: kBackgroundColor,
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.remove,
                                    color: kActiveTextColor,
                                  ),
                                ),
                                SizedBox(width: 20),
                                FloatingActionButton(
                                  elevation: 0,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(),
                                    CircleBorder(),
                                    0.5,
                                  ),
                                  backgroundColor: kBackgroundColor,
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.add,
                                    color: kActiveTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Calculate BMI",
                      style: TextStyle(fontSize: 20, color: kActiveTextColor),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: kButtonColor,
                      shape: RoundedRectangleBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
