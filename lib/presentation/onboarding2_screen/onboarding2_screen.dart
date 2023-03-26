import '../onboarding2_screen/widgets/sliderheadline2_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';
import 'package:insure_9ja/widgets/custom_floating_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding2Screen extends StatelessWidget {
  int silderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 25,
            top: 37,
            right: 25,
            bottom: 37,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  right: 2,
                ),
                child: Text(
                  "Skip",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgHospitalbuildi1,
                height: getVerticalSize(
                  312,
                ),
                width: getHorizontalSize(
                  324,
                ),
                margin: getMargin(
                  top: 64,
                ),
              ),
              Container(
                height: getVerticalSize(
                  267,
                ),
                width: getHorizontalSize(
                  321,
                ),
                margin: getMargin(
                  top: 16,
                  right: 2,
                  bottom: 15,
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CarouselSlider.builder(
                      options: CarouselOptions(
                        height: getVerticalSize(
                          267,
                        ),
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          silderIndex = index;
                        },
                      ),
                      itemCount: 1,
                      itemBuilder: (context, index, realIndex) {
                        return Sliderheadline2ItemWidget();
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: getVerticalSize(
                          4,
                        ),
                        margin: getMargin(
                          left: 13,
                          bottom: 20,
                        ),
                        child: AnimatedSmoothIndicator(
                          activeIndex: silderIndex,
                          count: 1,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            spacing: 3,
                            activeDotColor: ColorConstant.teal400,
                            dotColor: ColorConstant.teal40075,
                            dotHeight: getVerticalSize(
                              4,
                            ),
                            dotWidth: getHorizontalSize(
                              12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 56,
          width: 56,
          child: CustomImageView(
            svgPath: ImageConstant.imgButton,
            height: getVerticalSize(
              28.0,
            ),
            width: getHorizontalSize(
              28.0,
            ),
          ),
        ),
      ),
    );
  }
}
