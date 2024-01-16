import 'package:flutter/material.dart';
import 'package:proximize/feature/auth/presentation/widgets/app_spaces.dart';
import '../../data/model/onboarding.dart';
import 'on_boarding_description.dart';
import 'on_boarding_title.dart';

class PageViewComponent extends StatelessWidget {
  final OnBoardingModel model;

  const PageViewComponent({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSizedBoxes.getHorizontalAndVerticalSpace_300(
          childWidget: Image.asset(
            model.image,
          ),
        ),
        OnBoardingTitle(
          title: model.onBoardingTitle,
        ),
        AppSizedBoxes.getVerticalSpace_10(),
        OnBoardingDescription(
          description: model.onBoardingDescription1,
        ),
        OnBoardingDescription(
          description: model.onBoardingDescription2,
        ),
        OnBoardingDescription(
          description: model.onBoardingDescription3,
        ),
      ],
    );
  }
}
