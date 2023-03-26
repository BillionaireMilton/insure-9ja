import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';
import 'package:insure_9ja/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SigninWrongpasswordScreen extends StatelessWidget {
  TextEditingController inputemailaddreController = TextEditingController();

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
                              hintText: "07028912235",
                              margin: getMargin(left: 16, top: 7),
                              variant: TextFormFieldVariant.OutlineRedA200,
                              padding: TextFormFieldPadding.PaddingT18_2,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone),
                          Padding(
                              padding: getPadding(left: 16, top: 9),
                              child: Text(
                                  "*The phone number you entered is incorrect",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium11)),
                          Padding(
                              padding: getPadding(left: 19, top: 30),
                              child: Text("Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterRegular16Bluegray900)),
                          CustomImageView(
                              svgPath: ImageConstant.imgInputincorrect,
                              height: getVerticalSize(56),
                              width: getHorizontalSize(327),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(24)),
                              margin: getMargin(left: 14, top: 7)),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 16, top: 11, right: 2),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text(
                                                "*The password you entered is incorrect",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium11)),
                                        Padding(
                                            padding: getPadding(left: 6),
                                            child: Text("Forgot password?",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular13Teal400
                                                    .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .underline)))
                                      ]))),
                          CustomButton(
                              height: getVerticalSize(56),
                              text: "Login",
                              margin: getMargin(left: 8, top: 78, right: 8),
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
