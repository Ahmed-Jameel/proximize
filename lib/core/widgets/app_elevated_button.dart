import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/values.dart';
import '../resources/color_manager.dart';
import '../resources/styles_manager.dart';


///ignore: must_be_immutable
class AppElevatedButton extends StatelessWidget {

  final String image;
  final String label;
  double imageWidth;
  double imageHeight;

   AppElevatedButton({
    super.key,
    required this.image,
    this.imageWidth = AppSizeManager.s32,
    this.imageHeight = AppSizeManager.s32,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(AppSizeManager.s300.w, AppSizeManager.s60.h),
        elevation: AppSizeManager.s0,
        backgroundColor: ColorsManager.transparent,
        shadowColor: ColorsManager.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizeManager.s16),
        ),
      ),
      onPressed: () {},
      //TODO: Can We modify sizes more???
      icon: SizedBox(
        height: imageHeight.h,
        width: imageWidth.w,
        child: SvgPicture.asset(
          image,
        ),
      ),
      label: Text(
        label,
        style: getLightStyle(color: ColorsManager.black),
      ),
    );
  }
}
