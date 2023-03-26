import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';

class Onboarding3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 54,
            top: 133,
            right: 54,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Let’s get started!",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold32,
              ),
              Container(
                width: getHorizontalSize(
                  249,
                ),
                margin: getMargin(
                  left: 8,
                  top: 7,
                  right: 7,
                ),
                child: Text(
                  "Login to enjoy the features we’ve provided, and stay healthy!",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtInterRegular16,
                ),
              ),
              Spacer(),
              CustomButton(
                height: getVerticalSize(
                  56,
                ),
                text: "Login",
                shape: ButtonShape.CircleBorder28,
              ),
              CustomButton(
                height: getVerticalSize(
                  56,
                ),
                text: "Sign Up",
                margin: getMargin(
                  top: 24,
                  bottom: 131,
                ),
                variant: ButtonVariant.OutlineTeal400,
                shape: ButtonShape.CircleBorder28,
                fontStyle: ButtonFontStyle.InterMedium16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
