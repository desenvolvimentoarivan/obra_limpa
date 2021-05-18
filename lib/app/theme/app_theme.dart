import 'package:flutter/material.dart';

import 'color_theme.dart';
import 'text_theme.dart';

final appTheme = ThemeData(
  splashColor: CustomColors.secondaryColor,
  highlightColor: CustomColors.secondaryColor,
  accentColor: CustomColors.secondaryColor,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Segoeui',
  primaryColor: CustomColors.primaryColor,
  unselectedWidgetColor: CustomColors.neutralColor100,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
  iconTheme: IconThemeData(
    color: CustomColors.neutralColor100,
  ),
  appBarTheme: AppBarTheme(
    color: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: textTheme,
  ),
  textTheme: textTheme,
);
