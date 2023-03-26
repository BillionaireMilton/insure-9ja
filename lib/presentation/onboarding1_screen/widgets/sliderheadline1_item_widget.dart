import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';

// ignore: must_be_immutable
class Sliderheadline1ItemWidget extends StatelessWidget {
  Sliderheadline1ItemWidget();

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
            Align(
              alignment: Alignment.center,
              child: Container(
                width: getHorizontalSize(
                  268,
                ),
                margin: getMargin(
                  left: 12,
                  top: 127,
                  right: 14,
                ),
                child: Text(
                  "Get connect with trusted\nPharmacy nearby",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold22Gray900,
                ),
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
