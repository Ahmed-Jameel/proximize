import 'package:flutter/material.dart';
import 'package:proximize/models/on_boarding_model.dart';
import 'on_boarding_description.dart';
import 'on_boarding_title.dart';

class PageViewComponent extends StatelessWidget {
  final OnBoardingModel model;

  const PageViewComponent({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300.0,
          height: 300.0,
          child: Image.asset(
            model.image,
          ),
        ),
         OnBoardingTitle(
          title: model.onBoardingTitle,
        ),
        const SizedBox(
          height: 10.0,
        ),
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
