import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Liststepcounter5ItemWidget extends StatelessWidget {
  Liststepcounter5ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 16,
        right: 15,
        bottom: 16,
      ),
      decoration: AppDecoration.fillGray5002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
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
          CustomIconButton(
            height: 24,
            width: 24,
            variant: IconButtonVariant.FillTeal400,
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
