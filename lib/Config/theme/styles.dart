import 'package:flutter/material.dart';

import 'dimens.dart';

abstract class Fonts {
  static const poppins = 'Poppins';
}

abstract class TextStyles {
  static  TextStyle textRegular(_color) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: Dimens.textRegular,
    color: _color,
    overflow: TextOverflow.ellipsis,
    fontFamily: Fonts.poppins,
  );

  static  TextStyle textNormal(_color) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: Dimens.textNormal,
    color: _color,//Color(0xFF000000)
    overflow: TextOverflow.ellipsis,
    fontFamily: Fonts.poppins,
  );
  static  TextStyle textMedium(_color) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: Dimens.textMedium,
    color: _color,
    overflow: TextOverflow.ellipsis,
    fontFamily: Fonts.poppins,
  );
}
