import 'package:final_flutter_task/core/constant/theme_servies.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class MyTextTheme {
  final textTheme = TextTheme(
    titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: ThemeService().isSaveDarkMode() ? kDarkColor : kLightColor),
    titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ThemeService().isSaveDarkMode() ? kDarkColor : kLightColor),
    displayMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: ThemeService().isSaveDarkMode() ? kDarkColor : kLightColor),
  );
}
