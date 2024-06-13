import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget getAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      ' تو چنده BMI',
      style: TextStyle(color: Black),
    ),
    centerTitle: true,
  );
}
