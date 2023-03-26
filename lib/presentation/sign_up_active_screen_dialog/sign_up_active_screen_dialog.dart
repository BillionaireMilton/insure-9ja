import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class SignUpActiveScreenDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        327,
      ),
      padding: getPadding(
        left: 39,
        top: 29,
        right: 39,
        bottom: 29,
      ),
      decoration: AppDecoration.fillWhiteA70001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle,
            height: getVerticalSize(
              99,
            ),
            width: getHorizontalSize(
              122,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 26,
            ),
            child: Text(
              "User already exists",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterBold20,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              "Do you want to continue login?",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular16Bluegray300.copyWith(
                letterSpacing: getHorizontalSize(
                  0.5,
                ),
              ),
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              56,
            ),
            text: "Login",
            margin: getMargin(
              left: 38,
              top: 33,
              right: 26,
            ),
            shape: ButtonShape.CircleBorder28,
          ),
          Padding(
            padding: getPadding(
              top: 34,
              bottom: 10,
            ),
            child: Text(
              "Cancel",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular16Black900.copyWith(
                letterSpacing: getHorizontalSize(
                  0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
