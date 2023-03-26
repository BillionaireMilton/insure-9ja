import '../forgotpassword_success_screen/widgets/listellipsefiftynine3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';
import 'package:insure_9ja/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ForgotpasswordSuccessScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController enterpasswordinController = TextEditingController();

  TextEditingController comfirmpasswordOneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

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
                        getPadding(left: 18, top: 14, right: 18, bottom: 14),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(51),
                              width: getHorizontalSize(325),
                              margin: getMargin(left: 6),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: getVerticalSize(44),
                                        width: getHorizontalSize(40),
                                        alignment: Alignment.bottomLeft,
                                        onTap: () {
                                          onTapImgArrowleft(context);
                                        }),
                                    CustomButton(
                                        height: getVerticalSize(42),
                                        width: getHorizontalSize(323),
                                        text: "Password set successfully",
                                        variant: ButtonVariant.FillGreen90001,
                                        shape: ButtonShape.RoundedBorder8,
                                        padding: ButtonPadding.PaddingAll11,
                                        fontStyle:
                                            ButtonFontStyle.InterRegular16,
                                        alignment: Alignment.topCenter)
                                  ])),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 12),
                                  child: Text("Forgot Password",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold24))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: emailController,
                              hintText: "joy256@gmail.com",
                              margin: getMargin(left: 12, top: 30),
                              variant: TextFormFieldVariant.OutlineWhiteA70001,
                              padding: TextFormFieldPadding.PaddingT18_2,
                              fontStyle: TextFormFieldFontStyle
                                  .InterRegular16Gray50001,
                              textInputType: TextInputType.emailAddress),
                          Padding(
                              padding: getPadding(left: 17, top: 23),
                              child: Text("Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterRegular16Bluegray900)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: enterpasswordinController,
                              hintText: "Iamlove11!",
                              margin: getMargin(left: 12, top: 7)),
                          Padding(
                              padding: getPadding(left: 14, top: 23),
                              child: Text("Confirm Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterRegular16Bluegray900)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: comfirmpasswordOneController,
                              hintText: "Iamlove11!",
                              margin: getMargin(left: 12, top: 7)),
                          Padding(
                              padding: getPadding(left: 12, top: 23),
                              child: Text("Confirm OTP Code",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterRegular16Bluegray900)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: zipcodeController,
                              hintText: "377763",
                              margin: getMargin(left: 12, top: 8),
                              textInputAction: TextInputAction.done),
                          Padding(
                              padding: getPadding(left: 12, top: 8, right: 119),
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: getVerticalSize(7));
                                  },
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return Listellipsefiftynine3ItemWidget();
                                  })),
                          CustomButton(
                              height: getVerticalSize(56),
                              text: "Change Password",
                              margin: getMargin(left: 7, top: 37, right: 6)),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 10, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Didn’t receive the code? ",
                                            style: TextStyle(
                                                color: ColorConstant.gray600,
                                                fontSize: getFontSize(15),
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                letterSpacing:
                                                    getHorizontalSize(0.5))),
                                        TextSpan(
                                            text: "Resend",
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
