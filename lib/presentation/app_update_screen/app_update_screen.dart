import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';

class AppUpdateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA70001,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 22,
            top: 56,
            right: 22,
            bottom: 56,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle300x300,
                height: getSize(
                  300,
                ),
                width: getSize(
                  300,
                ),
                alignment: Alignment.centerLeft,
                margin: getMargin(
                  left: 7,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 52,
                ),
                child: Text(
                  "Downloading Update",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold24,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: getHorizontalSize(
                    315,
                  ),
                  margin: getMargin(
                    top: 12,
                    right: 15,
                  ),
                  child: Text(
                    "Please remain on this page until the update finishes downloading. The application will restart automatically.",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtInterMedium12,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 50,
                ),
                child: Text(
                  "50%",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular13Gray700,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                  bottom: 5,
                ),
                child: Container(
                  height: getVerticalSize(
                    8,
                  ),
                  width: getHorizontalSize(
                    189,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        4,
                      ),
                    ),
                    child: LinearProgressIndicator(
                      value: 0.5,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        ColorConstant.tealA400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
