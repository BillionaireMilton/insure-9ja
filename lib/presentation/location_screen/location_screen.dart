import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA70001,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 25,
            top: 81,
            right: 25,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Turn On Location",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold24,
              ),
              Container(
                width: getHorizontalSize(
                  321,
                ),
                margin: getMargin(
                  top: 14,
                ),
                child: Text(
                  "Please ensure that your device's location is turned on for the best experience with our app. This will allow us to provide you with personalized and location-based services.",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtInterRegular12Gray7001,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle200x200,
                height: getSize(
                  200,
                ),
                width: getSize(
                  200,
                ),
                margin: getMargin(
                  top: 56,
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  39,
                ),
                width: getHorizontalSize(
                  117,
                ),
                text: "Allow",
                margin: getMargin(
                  top: 48,
                ),
                shape: ButtonShape.RoundedBorder19,
                padding: ButtonPadding.PaddingT11,
                fontStyle: ButtonFontStyle.InterMedium16WhiteA70001,
              ),
              Padding(
                padding: getPadding(
                  top: 33,
                  bottom: 5,
                ),
                child: Text(
                  "Not now",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
