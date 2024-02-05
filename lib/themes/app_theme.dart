import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme = ThemeData(
  primaryColor: Colors.purple,
  fontFamily: "Poppins",
  primarySwatch: Colors.blue,
  textTheme: TextTheme(
    bodySmall: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.normal,
    ),
    bodyLarge: TextStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 19.sp,
      fontWeight: FontWeight.bold,
    ),
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.purple,
    elevation: 0,
  ),
);
