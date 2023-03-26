import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_image.dart';
import 'package:insure_9ja/widgets/app_bar/custom_app_bar.dart';
import 'package:insure_9ja/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeSetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(left: 24, top: 18, right: 23),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(35),
                                    centerTitle: true,
                                    title: Container(
                                        decoration: AppDecoration
                                            .outlineBlack900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Row(children: [
                                          Container(
                                              height: getVerticalSize(12),
                                              width: getHorizontalSize(94),
                                              margin: getMargin(
                                                  left: 8, top: 12, bottom: 11),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.teal40001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              6)))),
                                          AppbarIconbutton2(
                                              imagePath: ImageConstant
                                                  .imgProgressbarpoint1),
                                          AppbarIconbutton1(
                                              imagePath: ImageConstant
                                                  .imgProgressbarpoint1,
                                              margin: getMargin(left: 48)),
                                          AppbarIconbutton1(
                                              imagePath: ImageConstant
                                                  .imgProgressbarpoint1,
                                              margin: getMargin(left: 48)),
                                          Container(
                                              margin:
                                                  getMargin(top: 3, bottom: 4),
                                              padding: getPadding(
                                                  left: 3,
                                                  top: 6,
                                                  right: 3,
                                                  bottom: 6),
                                              decoration: AppDecoration
                                                  .fillTeal40001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    AppbarImage(
                                                        height: getSize(16),
                                                        width: getSize(16),
                                                        svgPath: ImageConstant
                                                            .imgArrowdown,
                                                        margin: getMargin(
                                                            left: 3,
                                                            top: 6,
                                                            right: 5,
                                                            bottom: 6))
                                                  ]))
                                        ])),
                                    styleType: Style.bgOutlineBlack900_1),
                                Padding(
                                    padding: getPadding(top: 19),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              height: getVerticalSize(44),
                                              width: getHorizontalSize(40),
                                              onTap: () {
                                                onTapImgArrowleft(context);
                                              }),
                                          Padding(
                                              padding: getPadding(
                                                  top: 15, bottom: 12),
                                              child: Text("Skip",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14Black900))
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
                                        style:
                                            AppStyle.txtInterRegular13Gray700)),
                                Padding(
                                    padding: getPadding(
                                        left: 12, top: 71, right: 12),
                                    child: PinCodeTextField(
                                        appContext: context,
                                        length: 4,
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
                                            fontWeight: FontWeight.w500),
                                        pinTheme: PinTheme(
                                            fieldWidth: getHorizontalSize(64),
                                            shape: PinCodeFieldShape.underline,
                                            selectedFillColor:
                                                ColorConstant.blueGray700,
                                            activeFillColor:
                                                ColorConstant.blueGray700,
                                            inactiveFillColor:
                                                ColorConstant.blueGray700,
                                            inactiveColor:
                                                ColorConstant.fromHex(
                                                    "#1212121D"),
                                            selectedColor:
                                                ColorConstant.fromHex(
                                                    "#1212121D"),
                                            activeColor: ColorConstant.fromHex(
                                                "#1212121D"))))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(
                              left: 26, top: 20, right: 26, bottom: 20),
                          decoration: AppDecoration.fillGray90075,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(42),
                                    text: "Pin set successfully",
                                    margin: getMargin(bottom: 686),
                                    variant: ButtonVariant.FillGreen900,
                                    shape: ButtonShape.RoundedBorder8,
                                    padding: ButtonPadding.PaddingAll11,
                                    fontStyle: ButtonFontStyle.InterRegular16)
                              ])))
                ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
