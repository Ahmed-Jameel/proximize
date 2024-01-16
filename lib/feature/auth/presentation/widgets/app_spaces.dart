import 'package:flutter/material.dart';
import '../resources/values.dart';

class AppSizedBoxes {
  static SizedBox getHorizontalSpace_10() {
    return const SizedBox(width: AppSizeManager.s10);
  }

  static SizedBox getVerticalSpace_10() {
    return const SizedBox(height: AppSizeManager.s10);
  }

  static SizedBox getHorizontalSpace_16() {
    return const SizedBox(width: AppSizeManager.s16);
  }

  static SizedBox getHorizontalAndVerticalSpace_300({
    required Widget childWidget,
  }) {
    return SizedBox(
      width: AppSizeManager.s300,
      height: AppSizeManager.s300,
      child: childWidget,
    );
  }

  static SizedBox getHorizontalSpaceInfinite({
    required Widget childWidget,
  }) {
    return SizedBox(
      width: AppSizeManager.infinite,
      child: childWidget,
    );
  }
}

class AppPaddings {
  static EdgeInsets getPadding_56() {
    return const EdgeInsets.all(AppPaddingManager.p56);
  }

  static EdgeInsets getPadding_24() {
    return const EdgeInsets.all(AppPaddingManager.p24);
  }
}
