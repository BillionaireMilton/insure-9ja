import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';

// ignore: must_be_immutable
class Listellipsefiftynine3ItemWidget extends StatelessWidget {
  Listellipsefiftynine3ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: getSize(
            4,
          ),
          width: getSize(
            4,
          ),
          margin: getMargin(
            top: 5,
            bottom: 5,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.gray400,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                2,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 6,
          ),
          child: Text(
            "At least 8 characters",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular12Gray700,
          ),
        ),
        Spacer(),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: getMargin(
            bottom: 1,
          ),
          color: ColorConstant.teal400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                6,
              ),
            ),
          ),
          child: Container(
            height: getSize(
              12,
            ),
            width: getSize(
              12,
            ),
            padding: getPadding(
              all: 2,
            ),
            decoration: AppDecoration.fillTeal400.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgCheckmarkWhiteA70001,
                  height: getSize(
                    7,
                  ),
                  width: getSize(
                    7,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
