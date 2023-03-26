import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SliderheadlineItemWidget extends StatelessWidget {
  SliderheadlineItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          left: 23,
          right: 23,
        ),
        decoration: AppDecoration.gradientGray50Gray5000.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: getHorizontalSize(
                234,
              ),
              margin: getMargin(
                left: 8,
                top: 127,
                right: 32,
              ),
              child: Text(
                "Find a lot of specialist doctors in one place",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold22,
              ),
            ),
            CustomIconButton(
              height: 56,
              width: 56,
              margin: getMargin(
                top: 21,
              ),
              variant: IconButtonVariant.OutlineBlack9003f,
              shape: IconButtonShape.CircleBorder28,
              padding: IconButtonPadding.PaddingAll16,
              alignment: Alignment.centerRight,
              child: CustomImageView(
                svgPath: ImageConstant.imgArrowright,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
