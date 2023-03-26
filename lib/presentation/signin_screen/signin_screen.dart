import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';
import 'package:insure_9ja/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SigninScreen extends StatelessWidget {
  TextEditingController inputemailaddreController = TextEditingController();

  TextEditingController groupThirtyEightController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 21, right: 16, bottom: 21),
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
                                  padding: getPadding(top: 17),
                                  child: Text("Sign In Account",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold24))),
                          Padding(
                              padding: getPadding(left: 16, top: 53),
                              child: Text("Email address or Phone number",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterRegular16Bluegray900)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: inputemailaddreController,
                              hintText: "Enter your email or phone",
                              margin: getMargin(left: 16, top: 7),
                              variant: TextFormFieldVariant.FillGray5001,
                              shape: TextFormFieldShape.RoundedBorder12,
                              textInputType: TextInputType.emailAddress),
                          Padding(
                              padding: getPadding(left: 19, top: 31),
                              child: Text("Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterRegular16Bluegray900)),
                          Container(
                              margin: getMargin(left: 14, top: 7, right: 2),
                              padding: getPadding(
                                  left: 24, top: 16, right: 24, bottom: 16),
                              decoration: AppDecoration.outlineGray200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgLockBlueGray30026x24,
                                        height: getVerticalSize(26),
                                        width: getHorizontalSize(24)),
                                    CustomTextFormField(
                                        width: getHorizontalSize(203),
                                        focusNode: FocusNode(),
                                        controller: groupThirtyEightController,
                                        hintText: "Enter your password",
                                        margin: getMargin(top: 3, bottom: 3),
                                        variant: TextFormFieldVariant.None,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        isObscureText: true),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgEye,
                                        height: getVerticalSize(26),
                                        width: getHorizontalSize(24))
                                  ])),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 11),
                                  child: Text("Forgot password?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular13Teal400
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline)))),
                          CustomButton(
                              height: getVerticalSize(56),
                              text: "Login",
                              margin: getMargin(left: 8, top: 98, right: 8),
                              shape: ButtonShape.CircleBorder28),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 28, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Don’t have an account?",
                                            style: TextStyle(
                                                color: ColorConstant.gray600,
                                                fontSize: getFontSize(15),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                letterSpacing:
                                                    getHorizontalSize(0.5))),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color: ColorConstant.gray600,
                                                fontSize: getFontSize(15),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "Sign Up",
                                            style: TextStyle(
                                                color: ColorConstant.teal400,
                                                fontSize: getFontSize(15),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
