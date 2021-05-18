import 'package:flutter/material.dart';
import 'package:obra_limpa/app/utils/configs.dart';

class TextStylish {
  TextStylish._();

  static final TextStyle h6 = TextStyle(
    fontSize: 1.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle h5 = TextStyle(
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle h4 = TextStyle(
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle h3 = TextStyle(
    fontSize: 3 * SizeConfig.textMultiplier,
  );

  static final TextStyle h2 = TextStyle(
    fontSize: 3.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle h1 = TextStyle(
    fontSize: 4 * SizeConfig.textMultiplier,
  );
}

final textTheme = ThemeData.light().textTheme.apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    );
