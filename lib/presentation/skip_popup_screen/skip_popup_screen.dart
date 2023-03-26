import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_image.dart';
import 'package:insure_9ja/widgets/app_bar/custom_app_bar.dart';
import 'package:insure_9ja/widgets/custom_button.dart';
import 'package:insure_9ja/widgets/custom_icon_button.dart';

class SkipPopupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            appBar: CustomAppBar(
                height: getVerticalSize(63),
                centerTitle: true,
                title: Container(
                    decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Row(children: [
                      Container(
                          height: getVerticalSize(12),
                          width: getHorizontalSize(94),
                          margin: getMargin(left: 8, top: 12, bottom: 11),
                          decoration: BoxDecoration(
                              color: ColorConstant.teal40001,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(6)))),
                      AppbarIconbutton2(
                          imagePath: ImageConstant.imgProgressbarpoint1),
                      AppbarIconbutton1(
                          imagePath: ImageConstant.imgProgressbarpoint1,
                          margin: getMargin(left: 48)),
                      AppbarIconbutton1(
                          imagePath: ImageConstant.imgProgressbarpoint1,
                          margin: getMargin(left: 48)),
                      Container(
                          margin: getMargin(top: 3, bottom: 4),
                          padding:
                              getPadding(left: 3, top: 6, right: 3, bottom: 6),
                          decoration: AppDecoration.fillTeal40001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppbarImage(
                                    height: getSize(16),
                                    width: getSize(16),
                                    svgPath: ImageConstant.imgArrowdown,
                                    margin: getMargin(
                                        left: 3, top: 6, right: 5, bottom: 6))
                              ]))
                    ])),
                styleType: Style.bgOutlineBlack900),
            body: Container(
                height: getVerticalSize(704),
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 8, right: 23, bottom: 8),
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(left: 13, top: 56, right: 12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Re-enter your pin code",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold24),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Text(
                                        "Use your pin to open secure and open the app",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterRegular13Gray700)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgPininputempty,
                                    height: getVerticalSize(2),
                                    width: getHorizontalSize(304),
                                    margin: getMargin(top: 70))
                              ]))),
                  CustomImageView(
                      svgPath: ImageConstant.imgArrowleft,
                      height: getVerticalSize(44),
                      width: getHorizontalSize(40),
                      alignment: Alignment.topLeft,
                      margin: getMargin(left: 1),
                      onTap: () {
                        onTapImgArrowleft(context);
                      }),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: getPadding(top: 15),
                          child: Text("Skip",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14Black900))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: getMargin(left: 1, top: 28, right: 1),
                          padding: getPadding(
                              left: 16, top: 24, right: 16, bottom: 24),
                          decoration: AppDecoration.fillWhiteA70001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 65,
                                    width: 65,
                                    variant:
                                        IconButtonVariant.FillDeeporange100,
                                    shape: IconButtonShape.RoundedBorder32,
                                    padding: IconButtonPadding.PaddingAll16,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgClock)),
                                Container(
                                    width: getHorizontalSize(238),
                                    margin:
                                        getMargin(left: 28, top: 29, right: 29),
                                    child: Text(
                                        "A PIN code provides an extra layer of security for your account and ensures that only you have access to your personal information.",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterRegular11Gray700)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: getHorizontalSize(226),
                                        margin: getMargin(
                                            left: 28, top: 22, right: 41),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "While you can skip this step now, we highly recommend creating a PIN code later in the",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray700,
                                                      fontSize: getFontSize(11),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              TextSpan(
                                                  text: " ",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray700,
                                                      fontSize: getFontSize(11),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              TextSpan(
                                                  text: "settings menu",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray700,
                                                      fontSize: getFontSize(11),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              TextSpan(
                                                  text:
                                                      " for added protection. ",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray700,
                                                      fontSize: getFontSize(11),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400))
                                            ]),
                                            textAlign: TextAlign.left))),
                                Padding(
                                    padding: getPadding(top: 51, bottom: 5),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomButton(
                                              height: getVerticalSize(36),
                                              width: getHorizontalSize(100),
                                              text: "Continue",
                                              variant:
                                                  ButtonVariant.OutlineTeal400,
                                              shape: ButtonShape.RoundedBorder8,
                                              padding:
                                                  ButtonPadding.PaddingAll11,
                                              fontStyle: ButtonFontStyle
                                                  .InterMedium11),
                                          CustomButton(
                                              height: getVerticalSize(36),
                                              width: getHorizontalSize(100),
                                              text: "Create Pin code",
                                              margin: getMargin(left: 95),
                                              shape: ButtonShape.RoundedBorder8,
                                              padding: ButtonPadding.PaddingT11,
                                              fontStyle: ButtonFontStyle
                                                  .InterMedium11WhiteA70001)
                                        ]))
                              ])))
                ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
