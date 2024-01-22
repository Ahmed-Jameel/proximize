import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../resources/values.dart';
import '../resources/color_manager.dart';


class PageIndicator extends StatelessWidget {
  final int count;
  final int activeIndex;
  const PageIndicator({
    super.key,
    required this.activeIndex,
    required this.count,
  });

  @override
  Widget build(BuildContext context) => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: count,
        effect:  ExpandingDotsEffect(
          activeDotColor: ColorsManager.primary,
          dotColor: ColorsManager.white,
          dotHeight: AppSizeManager.s8.h,
          dotWidth: AppSizeManager.s12.w,
        ),
      );
}