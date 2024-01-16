import 'package:flutter/material.dart';
import 'package:proximize/feature/auth/presentation/widgets/app_text_button.dart';
import '../../data/model/onboarding.dart';
import 'login_page.dart';
import 'register_page.dart';
import '../resources/color_manager.dart';
import '../resources/strings_manager.dart';
import '../widgets/app_spaces.dart';
import '../widgets/default_button.dart';
import '../widgets/page_indicator.dart';
import '../widgets/page_view_component.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({super.key});

  final pageController = PageController();
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
            onPressing: () {
              //TODO: USE GO_ROUTER
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const RegisterPage();
              }));
            },
            label: StringsManager.skip,
          ),
          AppSizedBoxes.getHorizontalSpace_16(),
        ],
      ),
      body: AppSizedBoxes.getHorizontalSpaceInfinite(
        childWidget: Padding(
          padding: AppPaddings.getPadding_24(),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return PageViewComponent(
                      model: onBoardingModels[index],
                    );
                  },
                  itemCount: onBoardingModels.length,
                ),
              ),
              Padding(
                padding: AppPaddings.getPadding_56(),
                child: PageIndicator(
                  pageController: pageController,
                  count: onBoardingModels.length,
                ),
              ),
              DefaultButton(
                label: StringsManager.signUp,
                onPressing: () {
                  //TODO: Use Go router
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const RegisterPage();
                  }));
                },
              ),
              AppSizedBoxes.getVerticalSpace_10(),
              DefaultButton(
                backgroundColor: ColorsManager.transparent,
                label: StringsManager.signIn,
                onPressing: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
