import '../verification_animation1_screen/widgets/liststepcounter2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';

class VerificationAnimation1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 16, right: 24, bottom: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgCloseGray90001,
                          height: getSize(24),
                          width: getSize(24),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgClose(context);
                          }),
                      Container(
                          width: getHorizontalSize(315),
                          margin: getMargin(left: 6, top: 41, right: 4),
                          child: Text(
                              "Bravoo you have taken the first step to start your Insure9ja journey",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterBold18)),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle150x150,
                          height: getSize(150),
                          width: getSize(150),
                          margin: getMargin(top: 13)),
                      Container(
                          width: getHorizontalSize(284),
                          margin: getMargin(left: 21, top: 24, right: 21),
                          child: Text(
                              "Complete three steps to set up your profile and  claim your 7days free trial",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterRegular14Bluegray9001)),
                      Padding(
                          padding: getPadding(left: 1, top: 55),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Liststepcounter2ItemWidget();
                              }))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "Complete Set Password",
                margin: getMargin(left: 25, right: 24, bottom: 61))));
  }

  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
