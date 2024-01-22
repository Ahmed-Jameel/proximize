import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../data/model/onboarding.dart';
import '../../../../core/resources/values.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_sized_box.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/routes_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/widgets/app_page_indicator.dart';
import '../../../../core/widgets/app_onboarding_component.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;

  final List<OnBoardingModel> onBoardingModels = [
    OnBoardingModel(
      image: 'assets/images/onboard1.png',
      onBoardingTitle: 'Track your work, get results.',
      onBoardingDescription1: 'Never let an important task slip through the',
      onBoardingDescription2: 'cracks and impress with your task',
      onBoardingDescription3: 'management abilities.',
    ),
    OnBoardingModel(
      image: 'assets/images/onboard2.png',
      onBoardingTitle: 'Stay organized projects',
      onBoardingDescription1: 'Leverage the products cross-platform',
      onBoardingDescription2: 'capabilities to manage tasks from',
      onBoardingDescription3: 'anywhere, at anytime.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            AppTextButton(
              onPressing: () => context.go(Routes.login),
              label: StringsManager.skip,
            ),
            AppSizedBoxes.getHorizontalSizedBox_16(),
          ],
        ),
        body: Padding(
          padding: AppPaddings.getPadding_24(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: AppSizeManager.s1,
                  height: AppSizeManager.s380.h,
                  enableInfiniteScroll: false,
                  scrollPhysics: const BouncingScrollPhysics(),
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                items: onBoardingModels.map((i) {
                  return OnBoardingComponent(
                    model: i,
                  );
                }).toList(),
              ),
              PageIndicator(
                activeIndex: currentIndex,
                count: onBoardingModels.length,
              ),
              AppButton(
                label: StringsManager.signUp,
                onPressing: () => context.go(Routes.register),
              ),
              AppButton(
                label: StringsManager.signIn,
                backgroundColor: ColorsManager.transparent,
                onPressing: () => context.go(Routes.login),
              ),
            ],
          ),
        ));
  }
}
