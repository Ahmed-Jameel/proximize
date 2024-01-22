import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppPaddingManager.p32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  StringsManager.welcomeBack,
                  style: getBoldStyle(fontSize: FontSizeManager.s34),
                ),
              ),
              AppSizedBoxes.getVerticalSizedBox_40(),
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
              AppSizedBoxes.getVerticalSizedBox_25(),
              AppButton(
                label: StringsManager.signIn,
                backgroundColor: ColorsManager.primary,
                onPressing: () {},
              ),
              TextButton(
                onPressed: () {},
                child: const Text(StringsManager.forgotPassword),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppPaddingManager.p32,
                ),
                child: Text(
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
                  style: getRichTextStyle(color: ColorsManager.black),
                  children: [
                    const TextSpan(
                      text: StringsManager.doNotHaveAcc,
                    ),
                    TextSpan(
                      text: StringsManager.signUp,
                      style: const TextStyle(
                        color: ColorsManager.primary,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.go(Routes.register),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
