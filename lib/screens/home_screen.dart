import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/widgets/background_shape_left.dart';
import 'package:bmi_calculator/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

import '../app_bar/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final weightControl = TextEditingController();
final heightControl = TextEditingController();

double resultBmi = 0;
String resultText = '';

double widthGood = 100;
double widthBad = 100;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      controller: weightControl,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: OrangeBackground),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'وزن',
                        hintStyle: TextStyle(
                          color: OrangeBackground.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      controller: heightControl,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: OrangeBackground),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'قد ',
                        hintStyle: TextStyle(
                          color: OrangeBackground.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  final weight = double.parse(weightControl.text);
                  final height = double.parse(heightControl.text);

                  setState(() {
                    resultBmi = weight / (height * height);

                    if (resultBmi > 25) {
                      widthBad = 400;
                      widthGood = 50;
                      resultText = 'شما اضافه وزن دارید';
                    } else if (resultBmi >= 18.5 && resultBmi < 25) {
                      widthBad = 50;
                      widthGood = 400;
                      resultText = 'وزن شما نرمال است';
                    } else
                      widthBad = 10;
                    widthGood = 10;
                    resultText = 'وزن شما کمتر از حد نرمال است';
                  });
                },
                child: Text(
                  '! محاسبه کن ',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '${resultBmi.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
              ),
              Text(
                '$resultText',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: OrangeBackground),
              ),
              SizedBox(
                height: 20,
              ),
              RightShape(width: widthBad),
              SizedBox(height: 15),
              LeftShape(width: widthBad),
            ],
          ),
        ),
      ),
    );
  }
}
