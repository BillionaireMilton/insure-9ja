import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_iconbutton.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_image.dart';
import 'package:insure_9ja/widgets/app_bar/custom_app_bar.dart';
import 'package:insure_9ja/widgets/custom_button.dart';
import 'package:insure_9ja/widgets/custom_drop_down.dart';
import 'package:insure_9ja/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PersonalDetailsScreen extends StatelessWidget {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController inputfullnameController = TextEditingController();

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController groupTwentySevenController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(63),
                centerTitle: true,
                title: Container(
                    decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Row(children: [
                      Container(
                          height: getVerticalSize(12),
                          width: getHorizontalSize(276),
                          margin: getMargin(left: 8, top: 12, bottom: 11),
                          decoration: BoxDecoration(
                              color: ColorConstant.teal40001,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(6)))),
                      AppbarIconbutton(
                          imagePath: ImageConstant.imgProgressbarpoint1),
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
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 24, right: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getVerticalSize(44),
                              width: getHorizontalSize(40),
                              alignment: Alignment.centerLeft,
                              margin: getMargin(top: 8),
                              onTap: () {
                                onTapImgArrowleft(context);
                              }),
                          Padding(
                              padding: getPadding(top: 9),
                              child: Text("Create Medical Profile",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold24)),
                          Padding(
                              padding: getPadding(top: 11),
                              child: Text("Tell us more about yourself",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold16Gray90090)),
                          Container(
                              width: getHorizontalSize(281),
                              margin: getMargin(left: 22, top: 9, right: 22),
                              child: Text(
                                  "Please ensure the details you provide is  up to date with your valid ID card",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtInterRegular13)),
                          Padding(
                              padding: getPadding(left: 9, top: 47, right: 8),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Title",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular16Bluegray900),
                                    CustomDropDown(
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 24),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .blueGray900A2,
                                                    width: getHorizontalSize(1),
                                                    strokeAlign:
                                                        strokeAlignCenter)),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownBlueGray900)),
                                        hintText: "Select Title",
                                        margin: getMargin(top: 8),
                                        items: dropdownItemList,
                                        onChanged: (value) {})
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 8, top: 19),
                                  child: Text("Full Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterRegular16Bluegray900))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: inputfullnameController,
                              hintText: "Enter your Fullname",
                              margin: getMargin(left: 8, top: 9, right: 9),
                              variant: TextFormFieldVariant.FillGray5001,
                              shape: TextFormFieldShape.RoundedBorder12,
                              padding: TextFormFieldPadding.PaddingT19,
                              fontStyle: TextFormFieldFontStyle.InterLight16,
                              prefix: Container(
                                  margin: getMargin(all: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56))),
                          Padding(
                              padding: getPadding(left: 9, top: 23, right: 8),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Gender",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular16Bluegray900),
                                    CustomDropDown(
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 24),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .black900A2,
                                                    width: getHorizontalSize(1),
                                                    strokeAlign:
                                                        strokeAlignCenter)),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownBlack900)),
                                        hintText: "Gender",
                                        margin: getMargin(top: 8),
                                        fontStyle:
                                            DropDownFontStyle.InterRegular16,
                                        items: dropdownItemList1,
                                        onChanged: (value) {})
                                  ])),
                          Padding(
                              padding: getPadding(left: 8, top: 24, right: 9),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Address",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular16Bluegray900),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: groupTwentySevenController,
                                        hintText: "home address",
                                        margin: getMargin(top: 7),
                                        shape:
                                            TextFormFieldShape.RoundedBorder12,
                                        padding:
                                            TextFormFieldPadding.PaddingT18_2,
                                        textInputAction: TextInputAction.done)
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 9, top: 24),
                                  child: Text("Date of Birth",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterRegular16Bluegray900))),
                          Container(
                              margin: getMargin(left: 9, top: 7, right: 5),
                              padding: getPadding(
                                  left: 16, top: 18, right: 16, bottom: 18),
                              decoration: AppDecoration.fillGray5002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2, bottom: 2),
                                        child: Text("MM-DD-YY",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular16Gray7001)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgBicalendardate,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(right: 30))
                                  ])),
                          CustomButton(
                              height: getVerticalSize(56),
                              text: "Create Profile",
                              margin: getMargin(top: 40))
                        ])))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
