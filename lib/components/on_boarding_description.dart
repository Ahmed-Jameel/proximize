import 'package:flutter/material.dart';

class OnBoardingDescription extends StatelessWidget {
  final String description;

  const OnBoardingDescription({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        fontSize: 15.0,
        color: Color(0xff99a4b4),
      ),
    );
  }
}
