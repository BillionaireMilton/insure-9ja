import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';

// ignore: must_be_immutable
class DoctorItemWidget extends StatelessWidget {
  DoctorItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: getVerticalSize(
            173,
          ),
          width: getHorizontalSize(
            121,
          ),
          margin: getMargin(
            right: 12,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: getMargin(
                    right: 3,
                  ),
                  padding: getPadding(
                    left: 10,
                    top: 12,
                    right: 10,
                    bottom: 12,
                  ),
                  decoration: AppDecoration.outlineBluegray50.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPexelscedricf,
                        height: getSize(
                          71,
                        ),
                        width: getSize(
                          71,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            35,
                          ),
                        ),
                        alignment: Alignment.center,
                        margin: getMargin(
                          top: 8,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 37,
                        ),
                        child: Text(
                          "Chardiologist",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium9,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: getHorizontalSize(
                                28,
                              ),
                              padding: getPadding(
                                left: 2,
                                right: 2,
                              ),
                              decoration: AppDecoration.fillBluegray50.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder2,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar,
                                    height: getSize(
                                      10,
                                    ),
                                    width: getSize(
                                      10,
                                    ),
                                    margin: getMargin(
                                      top: 1,
                                      bottom: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 2,
                                      top: 2,
                                    ),
                                    child: Text(
                                      "4,7",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgLocation,
                              height: getSize(
                                10,
                              ),
                              width: getSize(
                                10,
                              ),
                              margin: getMargin(
                                left: 8,
                                top: 2,
                                bottom: 1,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                                top: 2,
                              ),
                              child: Text(
                                "800m away",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium8Gray50001,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: getPadding(
                    bottom: 49,
                  ),
                  child: Text(
                    "Dr. Marcus Horizon",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold12,
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
