import '../verification_active_screen/widgets/gridcamera_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationActiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 16),
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
                          margin: getMargin(left: 56, top: 27, right: 55),
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
                          padding: getPadding(left: 22, top: 31, right: 19),
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
                              textStyle: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(16),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(42),
                                  fieldWidth: getHorizontalSize(42),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(12)),
                                  selectedFillColor: ColorConstant.whiteA70001,
                                  activeFillColor: ColorConstant.whiteA70001,
                                  inactiveFillColor: ColorConstant.whiteA70001,
                                  inactiveColor: ColorConstant.teal400,
                                  selectedColor: ColorConstant.teal400,
                                  activeColor: ColorConstant.teal400))),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("01:50",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14Bluegray900)),
                      Container(
                          height: getVerticalSize(336),
                          width: double.maxFinite,
                          margin: getMargin(top: 25),
                          child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
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
                                                  color:
                                                      ColorConstant.blueGray300,
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
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        margin: getMargin(
                                            left: 24, top: 64, right: 24),
                                        padding: getPadding(
                                            left: 140,
                                            top: 16,
                                            right: 140,
                                            bottom: 16),
                                        decoration: AppDecoration.fillTeal400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder24),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Text("Verify",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold16))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding: getPadding(
                                            left: 33,
                                            top: 12,
                                            right: 33,
                                            bottom: 12),
                                        decoration:
                                            AppDecoration.fillBluegray100,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                        height:
                                                            getVerticalSize(48),
                                                        width:
                                                            getHorizontalSize(
                                                                99),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCamera,
                                                                  height:
                                                                      getVerticalSize(
                                                                          48),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          99),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              23,
                                                                          top:
                                                                              2),
                                                                      child: Text(
                                                                          "1",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterRegular2588)))
                                                            ])),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      48),
                                                              width:
                                                                  getHorizontalSize(
                                                                      99),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCamera,
                                                                        height: getVerticalSize(
                                                                            48),
                                                                        width: getHorizontalSize(
                                                                            99),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        child: Padding(
                                                                            padding: getPadding(top: 2),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                              Text("2", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular2588),
                                                                              Padding(padding: getPadding(left: 9, top: 11, bottom: 5), child: Text("ABC", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular1208))
                                                                            ])))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      48),
                                                              width:
                                                                  getHorizontalSize(
                                                                      99),
                                                              margin: getMargin(
                                                                  left: 5),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCamera,
                                                                        height: getVerticalSize(
                                                                            48),
                                                                        width: getHorizontalSize(
                                                                            99),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        child: Padding(
                                                                            padding: getPadding(left: 23, top: 2),
                                                                            child: Row(children: [
                                                                              Text("3", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular2588),
                                                                              Padding(padding: getPadding(left: 7, top: 11, bottom: 5), child: Text("DEF", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular1208))
                                                                            ])))
                                                                  ]))
                                                        ])
                                                  ]),
                                              Padding(
                                                  padding: getPadding(top: 17),
                                                  child: GridView.builder(
                                                      shrinkWrap: true,
                                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                          mainAxisExtent:
                                                              getVerticalSize(
                                                                  49),
                                                          crossAxisCount: 3,
                                                          mainAxisSpacing:
                                                              getHorizontalSize(
                                                                  5),
                                                          crossAxisSpacing:
                                                              getHorizontalSize(
                                                                  5)),
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      itemCount: 6,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return GridcameraItemWidget();
                                                      })),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 17,
                                                      right: 7,
                                                      bottom: 50),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgVideocamera,
                                                            height:
                                                                getVerticalSize(
                                                                    48),
                                                            width:
                                                                getHorizontalSize(
                                                                    99)),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    48),
                                                            width:
                                                                getHorizontalSize(
                                                                    99),
                                                            margin: getMargin(
                                                                left: 5),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCamera,
                                                                      height:
                                                                          getVerticalSize(
                                                                              48),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              99),
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child: Padding(
                                                                          padding: getPadding(top: 2),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                            Text("0",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtInterRegular2588),
                                                                            Padding(
                                                                                padding: getPadding(left: 21, top: 8, bottom: 2),
                                                                                child: Text("+", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular1725))
                                                                          ])))
                                                                ])),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgLaptop,
                                                            height:
                                                                getVerticalSize(
                                                                    48),
                                                            width:
                                                                getHorizontalSize(
                                                                    86),
                                                            margin: getMargin(
                                                                left: 10))
                                                      ]))
                                            ])))
                              ]))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
