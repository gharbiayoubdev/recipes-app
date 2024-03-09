import 'package:flutter/material.dart';

class Dimens {
  // Text Sizes
  static const double textSmaler = 14;
  static const double textRegular = 16;
  static const double textNormal = 18;
  static const double textMedium = 24;

  // Icon Sizes
  static const double iconNormal = 24;

  // Height Sizes
  /*  static headerHeigh(context) {
    return MediaQuery.of(context).size.height * 0.18;
  } */
  static const double categoriesHeigh = 110;
  static const double subCategoriesHeigh = categoriesHeigh * 0.70;

  // Width Sizes
  static const double widthNormal = 50;
  static const double categoriesWidth = 100;

  // Padding Sizes

  static const double globalPadding = 15;
  static const double textPadding = 15;
  static const double subtitleMargin = 5;

  static headerTopPadding(context) {
    ///print(MediaQuery.of(context).size.height * 0.08);
    return MediaQuery.of(context).size.height * 0.08;
  }

  static space(context) {
    // print(MediaQuery.of(context).size.height * 0.03);
    return MediaQuery.of(context).size.height * 0.03;
  }
}
