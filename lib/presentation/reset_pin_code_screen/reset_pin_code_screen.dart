import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_iconbutton.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_image.dart';
import 'package:insure_9ja/widgets/app_bar/custom_app_bar.dart';

class ResetPinCodeScreen extends StatelessWidget {
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
                          width: getHorizontalSize(185),
                          margin: getMargin(left: 8, top: 12, bottom: 11),
                          decoration: BoxDecoration(
                              color: ColorConstant.teal40001,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(6)))),
                      AppbarIconbutton(
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
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 8, right: 23, bottom: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getVerticalSize(44),
                                    width: getHorizontalSize(40),
                                    onTap: () {
                                      onTapImgArrowleft(context);
                                    }),
                                Padding(
                                    padding: getPadding(top: 15, bottom: 12),
                                    child: Text("Skip",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterRegular14Black900))
                              ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("Re-enter your pin code",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold24)),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text(
                              "Use your pin to open secure and open the app",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular13Gray700)),
                      CustomImageView(
                          svgPath: ImageConstant.imgPininputempty,
                          height: getVerticalSize(2),
                          width: getHorizontalSize(304),
                          margin: getMargin(top: 70, bottom: 5))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
