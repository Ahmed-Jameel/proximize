import 'package:flutter/material.dart';
import 'package:proximize/feature/auth/presentation/resources/color_manager.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) => TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
    );

TextStyle getBoldStyle({
  double fontSize = FontSizeManager.s25,
  required Color color,
}) =>
    _getTextStyle(fontSize, FontWeightManager.bold, color);

TextStyle getLightStyle({
  double fontSize = FontSizeManager.s15,
  required Color color,
}) => _getTextStyle(fontSize, FontWeightManager.regular, color);
