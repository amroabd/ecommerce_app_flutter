import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData themeEnglish=ThemeData(
  fontFamily: 'Red Hat Display',
  textTheme:  const TextTheme(
    displayLarge: TextStyle(
        color: AppColor.blue,
        fontSize: 24.0,
        fontWeight: FontWeight.w800),
    displayMedium: TextStyle(
        color: AppColor.black87,
        fontSize: 18.0,
        fontWeight: FontWeight.w700),
    displaySmall: TextStyle(
        color: AppColor.black87,
        fontSize: 14.0,
        fontWeight: FontWeight.w400),
    bodyLarge: TextStyle(
        color: AppColor.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w700),
    bodyMedium: TextStyle(
        color: AppColor.black87,
        fontSize: 18.0,
        fontWeight: FontWeight.w400),
    bodySmall: TextStyle(
        fontFamily: 'Roboto',
        color: AppColor.black87,
        fontSize: 14.0,
        fontWeight: FontWeight.w200),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue.shade50,
  ),
  useMaterial3: true,
);
ThemeData themeArabic=ThemeData(
  fontFamily: 'Red Hat Display',
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        color: AppColor.blue,
        fontSize: 24.0,
        fontWeight: FontWeight.w700),
    displayMedium: TextStyle(
        color: AppColor.black87,
        fontSize: 18.0,
        fontWeight: FontWeight.w700),
    displaySmall: TextStyle(
        color: AppColor.black87,
        fontSize: 14.0,
        fontWeight: FontWeight.w400),
    bodyLarge: TextStyle(
        color: AppColor.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w700),
    bodyMedium: TextStyle(
        color: AppColor.black87,
        fontSize: 18.0,
        fontWeight: FontWeight.w400),
    bodySmall: TextStyle(
        color: AppColor.black87,
        fontSize: 14.0,
        fontWeight: FontWeight.w200),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue.shade50,
  ),
  useMaterial3: true,
);