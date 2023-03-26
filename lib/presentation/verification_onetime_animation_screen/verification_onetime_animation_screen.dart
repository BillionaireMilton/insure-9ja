import '../verification_onetime_animation_screen/widgets/liststepcounter_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';

class VerificationOnetimeAnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            body: Container(
                height: getVerticalSize(651),
                width: double.maxFinite,
                padding: getPadding(top: 16, bottom: 16),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: getVerticalSize(597),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.img94588celebration,
                                height: getVerticalSize(597),
                                width: getHorizontalSize(375),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(left: 24, right: 24),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCloseGray90001,
                                              height: getSize(24),
                                              width: getSize(24),
                                              alignment: Alignment.centerLeft,
                                              onTap: () {
                                                onTapImgClose(context);
                                              }),
                                          Container(
                                              width: getHorizontalSize(315),
                                              margin: getMargin(
                                                  left: 6, top: 41, right: 4),
                                              child: Text(
                                                  "Bravoo you have taken the first step to start your Insure9ja journey",
                                                  maxLines: null,
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      AppStyle.txtInterBold18)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle150x150,
                                              height: getSize(150),
                                              width: getSize(150),
                                              margin: getMargin(top: 13)),
                                          Container(
                                              width: getHorizontalSize(284),
                                              margin: getMargin(
                                                  left: 21, top: 24, right: 21),
                                              child: Text(
                                                  "Complete three steps to set up your profile and  claim your 7days free trial",
                                                  maxLines: null,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtInterRegular14Bluegray9001)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 1, top: 55),
                                              child: ListView.separated(
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return SizedBox(
                                                        height: getVerticalSize(
                                                            16));
                                                  },
                                                  itemCount: 2,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return ListstepcounterItemWidget();
                                                  }))
                                        ])))
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: getMargin(
                              left: 25, top: 547, right: 24, bottom: 5),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillGray5002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("Step 3.",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold16Black900)),
                                Padding(
                                    padding: getPadding(left: 8, bottom: 1),
                                    child: Text("Create Profile",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular16Black900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLockBlueGray300,
                                    height: getSize(16),
                                    width: getSize(16),
                                    margin:
                                        getMargin(top: 3, right: 17, bottom: 3))
                              ])))
                ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "Complete Sign Up",
                margin: getMargin(left: 25, right: 24, bottom: 61))));
  }

  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
