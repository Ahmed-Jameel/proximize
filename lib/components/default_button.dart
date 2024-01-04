import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {

  final String label;
  final Color? backgroundColor;
  final Function()? onPressing;

  const DefaultButton({
    super.key,
    required this.label,
    this.backgroundColor,
    this.onPressing,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(300, 60.0),
        elevation: 0.0,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      onPressed: onPressing,
      child:  Text(
        label,
        style: TextStyle(
          color: backgroundColor != null ? const Color(0xffffffff) : const Color(0xff805ad1),
        ),
      ),
    );
  }
}
