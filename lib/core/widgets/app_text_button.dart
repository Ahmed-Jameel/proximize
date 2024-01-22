import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final void Function()? onPressing;
  final String label;

  const AppTextButton({
    super.key,
    required this.onPressing,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressing,
      child: Text(
        label,
      ),
    );
  }
}