import 'package:bmi_calculator/app_bar/appbar.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:bmi_cemoalculator/widgets/background_shape_left.dart';
import 'package:bmi_calculator/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_bar/appbar.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
