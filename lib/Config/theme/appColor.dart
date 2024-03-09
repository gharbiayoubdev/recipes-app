import 'package:flutter/material.dart';

class AppColor {
  static Color primary = Color(0xFF094542);
  static Color primarySoft = Color.fromRGBO(61 ,131 ,97,1); //Color(0xFF0B5551
  static Color primaryExtraSoft = Color(0xFFEEF4F4); // Color(0xFFEEF4F4);
  static Color secondaryOne = Color.fromRGBO(238, 242, 230,1); // Color(0xFFEDE5CC);
  static Color secondaryTwo = Color.fromRGBO(214, 205, 164,1);
  static Color blackColor = Colors.black;
  static Color whiteColor = Colors.white;

  
  static LinearGradient bottomGreenShadow = LinearGradient(
      colors: [primary, primary.withOpacity(0.3)],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      stops: [0.4, 0.9]);
  
  static LinearGradient cardShadow = LinearGradient(
      colors: [Colors.black.withOpacity(1), Colors.white.withOpacity(0)],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
);
}
