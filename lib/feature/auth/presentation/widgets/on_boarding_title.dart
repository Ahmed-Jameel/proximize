import 'package:flutter/material.dart';
import 'package:proximize/feature/auth/presentation/resources/color_manager.dart';
import 'package:proximize/feature/auth/presentation/resources/styles_manager.dart';

class OnBoardingTitle extends StatelessWidget {
  final String title;

  const OnBoardingTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: getBoldStyle(
        color: ColorsManager.black,
      ),
    );
  }
}
