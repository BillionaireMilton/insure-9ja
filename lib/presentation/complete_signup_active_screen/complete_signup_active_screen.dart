import '../complete_signup_active_screen/widgets/listellipsefiftynine1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_iconbutton.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_image.dart';
import 'package:insure_9ja/widgets/app_bar/custom_app_bar.dart';
import 'package:insure_9ja/widgets/custom_button.dart';
import 'package:insure_9ja/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CompleteSignupActiveScreen extends StatelessWidget {
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                centerTitle: true,
                title: Container(
                    decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Row(children: [
                      Container(
                          height: getVerticalSize(12),
                          width: getHorizontalSize(58),
                          margin: getMargin(left: 8, top: 12, bottom: 11),
                          decoration: BoxDecoration(
                              color: ColorConstant.teal40001,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(6)))),
                      AppbarIconbutton(
                          imagePath: ImageConstant.imgProgressbarpoint1,
                          margin: getMargin(left: 24)),
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
                padding: getPadding(left: 16, top: 8, right: 16, bottom: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(44),
                          width: getHorizontalSize(40),
                          margin: getMargin(left: 8),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 11),
                              child: Text("Secure your account",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold24))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(281),
                              margin: getMargin(left: 30, top: 8, right: 30),
                              child: Text(
                                  "Please ensure the details you provide is  up to date with your valid ID card",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtInterRegular13))),
                      Padding(
                          padding: getPadding(left: 16, top: 47),
                          child: Text("Email address",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Bluegray900)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: inputController,
                          hintText: "James Schleifer",
                          margin: getMargin(left: 16, top: 7),
                          variant: TextFormFieldVariant.OutlineGray200,
                          padding: TextFormFieldPadding.PaddingT18_1,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 24, top: 16, right: 16, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSignal)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      Padding(
                          padding: getPadding(left: 19, top: 23),
                          child: Text("Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Bluegray900)),
                      Container(
                          margin: getMargin(left: 14, top: 7, right: 2),
                          padding: getPadding(
                              left: 24, top: 16, right: 24, bottom: 16),
                          decoration: AppDecoration.outlineGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLockTeal400,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 2)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMenu,
                                    height: getVerticalSize(8),
                                    width: getHorizontalSize(92),
                                    margin: getMargin(
                                        left: 16, top: 8, bottom: 10)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgEye,
                                    height: getVerticalSize(26),
                                    width: getHorizontalSize(24))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 40),
                          child: Text("Your password must include atleast",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular12)),
                      Padding(
                          padding: getPadding(left: 19, top: 17, right: 116),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(7));
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Listellipsefiftynine1ItemWidget();
                              }))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "Sign Up",
                margin: getMargin(left: 24, right: 24, bottom: 59),
                variant: ButtonVariant.FillTeal40001,
                shape: ButtonShape.CircleBorder28)));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
