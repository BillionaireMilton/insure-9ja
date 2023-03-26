import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 21, top: 16, right: 21, bottom: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 3, right: 92),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: getVerticalSize(44),
                                        width: getHorizontalSize(40),
                                        margin: getMargin(bottom: 137),
                                        onTap: () {
                                          onTapImgArrowleft(context);
                                        }),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 48, top: 32),
                                        color: ColorConstant.black90001,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(75))),
                                        child: Container(
                                            height: getSize(150),
                                            width: getSize(150),
                                            padding: getPadding(all: 42),
                                            decoration: AppDecoration
                                                .fillBlack90001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder75),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant.imgSms,
                                                  height: getSize(66),
                                                  width: getSize(66),
                                                  alignment: Alignment.center)
                                            ])))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("Verification Code",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold24)),
                      Container(
                          width: getHorizontalSize(262),
                          margin: getMargin(left: 35, top: 27, right: 34),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Please enter your 6 digit OTP code sent to ",
                                    style: TextStyle(
                                        color: ColorConstant.black90002,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "+234 ",
                                    style: TextStyle(
                                        color: ColorConstant.black90002,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: "70156786789",
                                    style: TextStyle(
                                        color: ColorConstant.black90003,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: ".",
                                    style: TextStyle(
                                        color: ColorConstant.black90002,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600))
                              ]),
                              textAlign: TextAlign.center)),
                      Padding(
                          padding: getPadding(top: 31),
                          child: PinCodeTextField(
                              appContext: context,
                              length: 6,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(42),
                                  fieldWidth: getHorizontalSize(42),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(12)),
                                  selectedFillColor: ColorConstant.whiteA70001,
                                  activeFillColor: ColorConstant.whiteA70001,
                                  inactiveFillColor: ColorConstant.whiteA70001,
                                  inactiveColor: ColorConstant.black90019,
                                  selectedColor: ColorConstant.black90019,
                                  activeColor: ColorConstant.black90019))),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("01:50",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14Bluegray900)),
                      Padding(
                          padding: getPadding(top: 25),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Didn’t get a code?",
                                    style: TextStyle(
                                        color: ColorConstant.gray700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray300,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "resend OTP code",
                                    style: TextStyle(
                                        color: ColorConstant.teal400,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.left)),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Verify",
                          margin:
                              getMargin(left: 3, top: 47, right: 3, bottom: 5))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
