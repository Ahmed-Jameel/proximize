import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class AppButton extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  final Function()? onPressing;

  const AppButton({
    super.key,
    required this.label,
    this.backgroundColor = ColorsManager.primary,
    this.onPressing,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) => backgroundColor!),
          ),
      onPressed: onPressing,
      child: Text(
        label,
        style: TextStyle(
          color: backgroundColor == ColorsManager.primary
              ? ColorsManager.white
              : ColorsManager.primary,
        ),
      ),
    );
  }
}
