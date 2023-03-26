import 'package:flutter/material.dart';
import 'package:insure_9ja/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      default:
        return getPadding(
          all: 5,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack9003f:
        return ColorConstant.teal400;
      case IconButtonVariant.FillGray500:
        return ColorConstant.gray500;
      case IconButtonVariant.FillCyan50d8:
        return ColorConstant.cyan50D8;
      case IconButtonVariant.FillTeal400:
        return ColorConstant.teal400;
      case IconButtonVariant.FillBluegray400:
        return ColorConstant.blueGray400;
      case IconButtonVariant.OutlineTeal400:
        return ColorConstant.cyan50D8;
      case IconButtonVariant.FillDeeporange100:
        return ColorConstant.deepOrange100;
      default:
        return ColorConstant.cyan50D801;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineTeal400:
        return Border.all(
          color: ColorConstant.teal400,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case IconButtonVariant.FillCyan50d801:
      case IconButtonVariant.OutlineBlack9003f:
      case IconButtonVariant.FillGray500:
      case IconButtonVariant.FillCyan50d8:
      case IconButtonVariant.FillTeal400:
      case IconButtonVariant.FillBluegray400:
      case IconButtonVariant.FillDeeporange100:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
      case IconButtonShape.CircleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case IconButtonShape.RoundedBorder32:
        return BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            17.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack9003f:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case IconButtonVariant.FillCyan50d801:
      case IconButtonVariant.FillGray500:
      case IconButtonVariant.FillCyan50d8:
      case IconButtonVariant.FillTeal400:
      case IconButtonVariant.FillBluegray400:
      case IconButtonVariant.OutlineTeal400:
      case IconButtonVariant.FillDeeporange100:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder17,
  CircleBorder28,
  CircleBorder12,
  RoundedBorder32,
}

enum IconButtonPadding {
  PaddingAll5,
  PaddingAll16,
}

enum IconButtonVariant {
  FillCyan50d801,
  OutlineBlack9003f,
  FillGray500,
  FillCyan50d8,
  FillTeal400,
  FillBluegray400,
  OutlineTeal400,
  FillDeeporange100,
}
