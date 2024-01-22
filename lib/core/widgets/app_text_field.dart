import 'package:flutter/material.dart';

import '../resources/values.dart';
import '../resources/color_manager.dart';



/// ignore: must_be_immutable
class AppTextField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;
  final TextInputType textInputType;
  bool isPasswordField;
  bool isSecured;
  IconData? suffixIcon;
  void Function()? onPressingSuffixIcon;

  AppTextField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    this.onPressingSuffixIcon,
    this.isPasswordField = false,
    this.isSecured = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: isPasswordField
            ? IconButton(
                onPressed: onPressingSuffixIcon,
                icon: Icon(
                  suffixIcon,
                ),
              )
            : null,
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeManager.s16),
          borderSide: const BorderSide(
            color: ColorsManager.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeManager.s16),
          borderSide: const BorderSide(
            color: ColorsManager.primary,
          ),
        ),
      ),
      keyboardType: textInputType,
      obscureText: isSecured,
    );
  }
}
