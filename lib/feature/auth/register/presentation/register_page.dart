import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/resources/values.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_sized_box.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/styles_manager.dart';
import '../../../../core/resources/images_manager.dart';
import '../../../../core/resources/routes_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/widgets/app_elevated_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(AppPaddingManager.p16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppSizedBoxes.getVerticalSizedBox_40(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    StringsManager.createAccount,
                    style: getBoldStyle(fontSize: FontSizeManager.s34),
                  ),
                ),
                AppSizedBoxes.getVerticalSizedBox_40(),
                AppTextField(
                  prefixIcon: Icons.person_2_outlined,
                  hintText: StringsManager.username,
                  textInputType: TextInputType.name,
                ),
                AppTextField(
                  prefixIcon: Icons.email_outlined,
                  hintText: StringsManager.emailAddress,
                  textInputType: TextInputType.emailAddress,
                ),
                AppTextField(
                  prefixIcon: Icons.lock_outline,
                  hintText: StringsManager.password,
                  textInputType: TextInputType.visiblePassword,
                  isPasswordField: true,
                  isSecured: isHiddenPassword,
                  suffixIcon: isHiddenPassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  onPressingSuffixIcon: () {
                    setState(() {
                      isHiddenPassword = !isHiddenPassword;
                    });
                  },
                ),
                AppSizedBoxes.getVerticalSizedBox_10(),
                RichText(
                  text: TextSpan(
                    style: getRichTextStyle(color: ColorsManager.black),
                    children: [
                      const TextSpan(
                        text: StringsManager.notice,
                      ),
                      TextSpan(
                        text: StringsManager.termsAndConditions,
                        style: getRichTextStyle(color: ColorsManager.primary),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      const TextSpan(
                        text: StringsManager.and,
                      ),
                      TextSpan(
                        text: StringsManager.privacyPolicy,
                        style: getRichTextStyle(color: ColorsManager.primary),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
                AppSizedBoxes.getVerticalSizedBox_25(),
                AppButton(
                  label: StringsManager.continue_,
                  backgroundColor: ColorsManager.primary,
                  onPressing: () {},
                ),
                 Padding(
                  padding: EdgeInsets.only(
                    top: AppPaddingManager.p32.w,
                    bottom: AppPaddingManager.p24.w,
                  ),
                  child: const Text(
                    StringsManager.or,
                  ),
                ),
                AppElevatedButton(
                  image: ImagesManager.appleImage,
                  label: StringsManager.continueWithApple,
                ),
                AppElevatedButton(
                  image: ImagesManager.googleImage,
                  imageWidth: AppSizeManager.s25,
                  imageHeight: AppSizeManager.s25,
                  label: StringsManager.continueWithGoogle,
                ),
                AppSizedBoxes.getVerticalSizedBox_25(),
                RichText(
                  text: TextSpan(
                    style:  TextStyle(
                      fontSize: FontSizeManager.s12,
                      color: ColorsManager.black,
                    ),
                    children: [
                      const TextSpan(
                        text: StringsManager.haveAnAccount,
                      ),
                      TextSpan(
                        text: StringsManager.signIn,
                        style: const TextStyle(
                          color: ColorsManager.primary,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context.go(Routes.login),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
