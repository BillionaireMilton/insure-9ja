import '../forgotpassword_screen/widgets/listellipsefiftynine2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';
import 'package:insure_9ja/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ForgotpasswordScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController enterpasswordinController = TextEditingController();

  TextEditingController comfirmpasswordOneController = TextEditingController();

  TextEditingController comfirmcodeinpuController = TextEditingController();

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
                        getPadding(left: 18, top: 21, right: 18, bottom: 21),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getVerticalSize(44),
                              width: getHorizontalSize(40),
                              margin: getMargin(left: 6),
                              onTap: () {
                                onTapImgArrowleft(context);
                              }),
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
                              hintText: "Enter password",
                              margin: getMargin(left: 12, top: 7),
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true),
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
                              hintText: "Confirm password",
                              margin: getMargin(left: 12, top: 7),
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true),
                          Padding(
                              padding: getPadding(left: 12, top: 23),
                              child: Text("Confirm OTP Code",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterRegular16Bluegray900)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: comfirmcodeinpuController,
                              hintText: "Confirmtion code",
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
                                    return Listellipsefiftynine2ItemWidget();
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
