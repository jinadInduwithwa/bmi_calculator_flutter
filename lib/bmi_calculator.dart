import 'package:demo/constant.dart';
import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({super.key});

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  bool isMale = false;
  double height = 183;
  int weight = 74;
  int age = 30;
  double bmi = 0;

  double calculateBMI(weight, height) {
    bmi = weight / ((height / 100) * (height / 100));
    return bmi;
  }

  Color getBMIColor(double bmi) {
    if (bmi < 18.5) {
      return Colors.blue;
    } else if (bmi < 25) {
      return Colors.green;
    } else if (bmi < 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

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
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: isMale
                              ? kSelectedTileBorderDecoration
                              : kTileBorderDecoration,
                          child: const Column(
                            children: [
                              Icon(
                                Icons.male,
                                size: 50,
                                color: kActiveTextColor,
                              ),
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
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: !isMale
                              ? kSelectedTileBorderDecoration
                              : kTileBorderDecoration,
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
                            "${height.toStringAsFixed(2)}",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: kActiveTextColor,
                            ),
                          ),
                          const Text(
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
                        value: height,
                        onChanged: (value) {
                          var bmi_value = calculateBMI(weight, height);
                          setState(() {
                            bmi = bmi_value;
                          });
                          setState(() {
                            height = value;
                          });
                        },
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
                              "${weight}",
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
                                  onPressed: () {
                                    var bmi_value = calculateBMI(
                                      weight,
                                      height,
                                    );
                                    setState(() {
                                      bmi = bmi_value;
                                    });
                                    setState(() {
                                      if (weight > 10) {
                                        weight--;
                                      }
                                    });
                                  },
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
                                  onPressed: () {
                                    var bmi_value = calculateBMI(
                                      weight,
                                      height,
                                    );
                                    setState(() {
                                      bmi = bmi_value;
                                    });
                                    setState(() {
                                      if (weight < 250) {
                                        weight++;
                                      }
                                      weight++;
                                    });
                                  },
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
                              "Age",
                              style: TextStyle(color: kActiveTextColor),
                            ),
                            Text(
                              "${age}",
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
                                  onPressed: () {
                                    var bmi_value = calculateBMI(
                                      weight,
                                      height,
                                    );
                                    setState(() {
                                      bmi = bmi_value;
                                    });
                                    setState(() {
                                      if (age > 10) {
                                        age--;
                                      }
                                    });
                                  },
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
                                  onPressed: () {
                                    var bmi_value = calculateBMI(
                                      weight,
                                      height,
                                    );
                                    setState(() {
                                      bmi = bmi_value;
                                    });
                                    setState(() {
                                      age++;
                                    });
                                  },
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
            SizedBox(height: 5),
            Expanded(
              child: Container(
                color: getBMIColor(bmi),
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${bmi.toStringAsFixed(2)}",
                      style: TextStyle(color: kActiveTextColor, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
