import '../top_doctor_screen/widgets/listpexelscedricf_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/app_bar/appbar_image.dart';
import 'package:insure_9ja/widgets/app_bar/custom_app_bar.dart';

class TopDoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70001,
            appBar: CustomAppBar(
                height: getVerticalSize(64),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft(context)),
                centerTitle: true,
                title: Text("Top Doctor",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold16Gray90001),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(4),
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 24, top: 21, right: 24, bottom: 19))
                ]),
            body: Padding(
                padding: getPadding(left: 21, top: 25, right: 20),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListpexelscedricfItemWidget();
                    }))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
