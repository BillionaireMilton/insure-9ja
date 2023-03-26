import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Liststepcounter1ItemWidget extends StatelessWidget {
  Liststepcounter1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 8,
        top: 16,
        right: 8,
        bottom: 16,
      ),
      decoration: AppDecoration.fillCyan50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              left: 8,
              top: 3,
            ),
            child: Text(
              "Step 1.",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold16Black900,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 3,
            ),
            child: Text(
              "Complete Sign Up",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular16Black900,
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgLock,
            height: getSize(
              16,
            ),
            width: getSize(
              16,
            ),
            margin: getMargin(
              top: 4,
              bottom: 4,
            ),
          ),
          CustomIconButton(
            height: 24,
            width: 24,
            margin: getMargin(
              left: 8,
            ),
            variant: IconButtonVariant.FillGray500,
            shape: IconButtonShape.CircleBorder12,
            child: CustomImageView(
              svgPath: ImageConstant.imgCheckmarkWhiteA70001,
            ),
          ),
        ],
      ),
    );
  }
}
