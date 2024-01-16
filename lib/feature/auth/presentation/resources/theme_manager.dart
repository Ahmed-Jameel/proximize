import 'package:flutter/material.dart';
import 'values.dart';

ThemeData getApplicationTheme() => ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(AppSizeManager.s300, AppSizeManager.s60),
          elevation: AppSizeManager.s0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizeManager.s16),
          ),
        ),
      ),
    );
