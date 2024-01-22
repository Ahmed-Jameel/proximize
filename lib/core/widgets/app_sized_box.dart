import 'package:flutter/material.dart';

import '../resources/values.dart';

class AppSizedBoxes {


  static SizedBox getVerticalSizedBox_10() =>
      const SizedBox(height: AppSizeManager.s10);
  static SizedBox getVerticalSizedBox_20() =>
      const SizedBox(height: AppSizeManager.s20);
  static SizedBox getVerticalSizedBox_25() =>
      const SizedBox(height: AppSizeManager.s25);
  static SizedBox getVerticalSizedBox_40() =>
      const SizedBox(height: AppSizeManager.s40);

  static SizedBox getHorizontalSizedBox_10() =>
      const SizedBox(width: AppSizeManager.s10);
  static SizedBox getHorizontalSizedBox_16() =>
      const SizedBox(width: AppSizeManager.s16);

  static SizedBox getSizedBox_300({
    required Widget child,
  }) =>
      SizedBox(
        width: AppSizeManager.s300,
        height: AppSizeManager.s300,
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
    return const EdgeInsets.all(AppPaddingManager.p56);
  }

  static EdgeInsets getPadding_24() {
    return const EdgeInsets.all(AppPaddingManager.p24);
  }
}
