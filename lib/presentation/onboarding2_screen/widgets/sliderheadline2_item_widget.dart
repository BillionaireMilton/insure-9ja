import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';

// ignore: must_be_immutable
class Sliderheadline2ItemWidget extends StatelessWidget {
  Sliderheadline2ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          left: 13,
          right: 13,
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
                225,
              ),
              margin: getMargin(
                left: 28,
                top: 128,
                right: 41,
              ),
              child: Text(
                "Carry out Laboratory test nearby ",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold22Green800,
              ),
            ),
            Container(
              height: getVerticalSize(
                56,
              ),
              width: getHorizontalSize(
                285,
              ),
              margin: getMargin(
                top: 21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
