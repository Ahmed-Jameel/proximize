import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/values.dart';

class AppSizedBoxes {
  static SizedBox getVerticalSizedBox_10() =>
      SizedBox(height: AppSizeManager.s10.h);
  static SizedBox getVerticalSizedBox_20() =>
      SizedBox(height: AppSizeManager.s20.h);
  static SizedBox getVerticalSizedBox_25() =>
      SizedBox(height: AppSizeManager.s25.h);
  static SizedBox getVerticalSizedBox_40() =>
      SizedBox(height: AppSizeManager.s40.h);

  static SizedBox getHorizontalSizedBox_10() =>
      SizedBox(width: AppSizeManager.s10.w);
  static SizedBox getHorizontalSizedBox_16() =>
      SizedBox(width: AppSizeManager.s16.w);

  static SizedBox getSizedBox_300({
    required Widget child,
  }) =>
      SizedBox(
        width: AppSizeManager.s300.w,
        height: AppSizeManager.s300.h,
        child: child,
      );

  static SizedBox getInfiniteHorizontalSizedBox({
    required Widget childWidget,
  }) =>
      SizedBox(
        width: AppSizeManager.infinite,
        child: childWidget,
      );
}

class AppPaddings {
  static EdgeInsets getPadding_56() {
    return EdgeInsets.all(AppPaddingManager.p56.w);
  }

  static EdgeInsets getPadding_24() {
    return EdgeInsets.all(AppPaddingManager.p24.w);
  }
}
