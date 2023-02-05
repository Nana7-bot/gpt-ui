import 'package:flutter/material.dart';
import 'package:gpt/constants.dart';


class MyTheme {

  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(),
    primaryColor: Colors.black
  );

  static final darkThem = ThemeData(
      colorScheme: const ColorScheme.dark(),
    scaffoldBackgroundColor: kLightPrimaryBlackTwo,
    primaryColor: Colors.white
  );
}