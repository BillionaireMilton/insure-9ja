import '../congratulations_animation_step3_screen/widgets/liststepcounter5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_button.dart';

class CongratulationsAnimationStep3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA70001,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 32,
            right: 24,
            bottom: 32,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  292,
                ),
                margin: getMargin(
                  left: 17,
                  top: 49,
                  right: 16,
                ),
                child: Text(
                  "Well done, you have successfully created your Insure9ja Account",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtInterBold18,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle150x150,
                height: getSize(
                  150,
                ),
                width: getSize(
                  150,
                ),
                margin: getMargin(
                  top: 13,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  306,
                ),
                margin: getMargin(
                  left: 10,
                  top: 25,
                  right: 9,
                ),
                child: Text(
                  "Finish by clicking 'Done' and logging in to view your dashboard.",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtInterRegular14Bluegray9001,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 55,
                ),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        16,
                      ),
                    );
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Liststepcounter5ItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          height: getVerticalSize(
            56,
          ),
          text: "Done",
          margin: getMargin(
            left: 25,
            right: 24,
            bottom: 61,
          ),
        ),
      ),
    );
  }
}
