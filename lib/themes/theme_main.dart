import 'package:encontrau_front/utils/constants.dart';
import 'package:flutter/material.dart';

class ThemeMain {
  static ThemeData dark() {
    final defaultThemeData = ThemeData.dark();

    return defaultThemeData.copyWith(
      primaryColor: kColorCoat1,
      scaffoldBackgroundColor: kColorCoat2,
      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: kColorMagnifier2,
          fontSize: kFontSizeMedium,
        ),
      ),
    );
  }
}
