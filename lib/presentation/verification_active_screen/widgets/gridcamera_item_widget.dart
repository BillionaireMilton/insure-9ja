import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';

// ignore: must_be_immutable
class GridcameraItemWidget extends StatelessWidget {
  GridcameraItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        48,
      ),
      width: getHorizontalSize(
        99,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCamera,
            height: getVerticalSize(
              48,
            ),
            width: getHorizontalSize(
              99,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: getPadding(
                left: 23,
                top: 2,
              ),
              child: Row(
                children: [
                  Text(
                    "4",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular2588,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 7,
                      top: 11,
                      bottom: 5,
                    ),
                    child: Text(
                      "GHI",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular1208,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
