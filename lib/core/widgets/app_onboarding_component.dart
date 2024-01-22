import 'package:flutter/material.dart';

import 'app_sized_box.dart';
import '../resources/font_manager.dart';
import '../resources/styles_manager.dart';
import '../../feature/auth/onboarding/data/model/onboarding.dart';


class OnBoardingComponent extends StatelessWidget {
  final OnBoardingModel model;

  const OnBoardingComponent({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          model.image,
        ),
        Text(
          model.onBoardingTitle,
          style: getBoldStyle(
            fontSize: FontSizeManager.s26,
          ),
        ),
        AppSizedBoxes.getVerticalSizedBox_10(),
        Text(
          model.onBoardingDescription1,
          style: getLightStyle(),
        ),
        Text(
          model.onBoardingDescription2,
          style: getLightStyle(),
        ),
        Text(
          model.onBoardingDescription3,
          style: getLightStyle(),
        ),
      ],
    );
  }
}
