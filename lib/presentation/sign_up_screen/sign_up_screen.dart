import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 16, right: 24, bottom: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(44),
                          width: getHorizontalSize(40),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 22),
                              child: Text("Sign up as a new user",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold24))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(263),
                              margin: getMargin(left: 31, top: 13, right: 31),
                              child: Text(
                                  "Please enter your phone number. you will receive a 6-digit code via SMS.",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtInterRegular15))),
                      Container(
                          margin: getMargin(top: 62),
                          padding: getPadding(
                              left: 24, top: 16, right: 24, bottom: 16),
                          decoration: AppDecoration.fillGray5001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgClose,
                                height: getSize(24),
                                width: getSize(24)),
                            CustomImageView(
                                svgPath: ImageConstant.imgCheckmark,
                                height: getSize(24),
                                width: getSize(24),
                                margin: getMargin(left: 8)),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 2, bottom: 1),
                                child: Text("Mobile Number",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular16Gray700))
                          ])),
                      Container(
                          width: getHorizontalSize(263),
                          margin: getMargin(left: 16, top: 8, right: 47),
                          child: Text(
                              "You will receive an SMS verification that may apply message and data rate",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular11)),
                      Container(
                          margin: getMargin(top: 22),
                          padding: getPadding(
                              left: 27, top: 16, right: 27, bottom: 16),
                          decoration: AppDecoration.outlineBluegray10066
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1, bottom: 1),
                                    child: Text("Have a Referral code?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterRegular16Gray700)),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("Optional",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular16Bluegray400))
                              ])),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Continue",
                          margin: getMargin(top: 90, bottom: 5))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
