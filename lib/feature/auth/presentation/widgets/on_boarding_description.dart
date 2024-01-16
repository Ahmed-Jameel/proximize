import 'package:flutter/material.dart';
import 'package:proximize/feature/auth/presentation/resources/color_manager.dart';
import 'package:proximize/feature/auth/presentation/resources/styles_manager.dart';

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
      style:getLightStyle(
        color: ColorsManager.grey,
      ),
    );
  }
}
