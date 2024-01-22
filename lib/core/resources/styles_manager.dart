import 'package:flutter/material.dart';
import 'package:proximize/core/resources/color_manager.dart';
import 'package:proximize/core/resources/font_manager.dart';

TextStyle getBoldStyle({
  required double fontSize,
}) =>
    TextStyle(
      fontWeight: FontWeightManager.bold,
      fontSize: fontSize,
    );

TextStyle getLightStyle({
  Color color = ColorsManager.grey,
}) =>
    TextStyle(
      color: color,
      fontSize: FontSizeManager.s16,
    );

TextStyle getRichTextStyle({
  required Color color,
}) =>
    TextStyle(
      color: color,
      fontSize: FontSizeManager.s12,
    );
