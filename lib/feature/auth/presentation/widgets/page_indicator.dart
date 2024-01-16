import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../resources/color_manager.dart';
import '../resources/values.dart';

class PageIndicator extends StatelessWidget {
  final PageController pageController;
  final int count;
  const PageIndicator({
    super.key,
    required this.pageController,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: count,
      effect: const ExpandingDotsEffect(
        activeDotColor: ColorsManager.primary,
        dotColor: ColorsManager.white,
        dotHeight: AppSizeManager.s8,
        dotWidth: AppSizeManager.s12,
      ),
    );
  }
}
