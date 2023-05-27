import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll3:
        return getPadding(
          all: 3,
        );
      case ButtonPadding.PaddingT12:
        return getPadding(
          top: 12,
          right: 12,
          bottom: 12,
        );
      case ButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      case ButtonPadding.PaddingT7:
        return getPadding(
          top: 7,
          right: 7,
          bottom: 7,
        );
      default:
        return getPadding(
          all: 15,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGreen400:
        return ColorConstant.green400;
      case ButtonVariant.FillBluegray500:
        return ColorConstant.blueGray500;
      case ButtonVariant.FillRed200:
        return ColorConstant.red200;
      case ButtonVariant.FillBluegray80001:
        return ColorConstant.blueGray80001;
      case ButtonVariant.FillBluegray40033:
        return ColorConstant.blueGray40033;
      case ButtonVariant.FillYellow800:
        return ColorConstant.yellow800;
      case ButtonVariant.FillOrange20090:
        return ColorConstant.orange20090;
      case ButtonVariant.OutlineOrange200b2:
        return ColorConstant.orange2007f;
      default:
        return ColorConstant.orange200;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineOrange200b2:
        return BorderSide(
          color: ColorConstant.orange200B2,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillOrange200:
      case ButtonVariant.FillGreen400:
      case ButtonVariant.FillBluegray500:
      case ButtonVariant.FillRed200:
      case ButtonVariant.FillBluegray80001:
      case ButtonVariant.FillBluegray40033:
      case ButtonVariant.FillYellow800:
      case ButtonVariant.FillOrange20090:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case ButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.RoundedBorder13:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterMedium8:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            8,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterBold12WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterBold12Bluegray80001:
        return TextStyle(
          color: ColorConstant.blueGray80001,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterSemiBold8:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            8,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.InterBold10:
        return TextStyle(
          color: ColorConstant.blueGray80001,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder5,
  RoundedBorder8,
  CircleBorder20,
  RoundedBorder13,
}

enum ButtonPadding {
  PaddingAll15,
  PaddingAll3,
  PaddingT12,
  PaddingAll7,
  PaddingT7,
}

enum ButtonVariant {
  FillOrange200,
  FillGreen400,
  FillBluegray500,
  FillRed200,
  FillBluegray80001,
  FillBluegray40033,
  FillYellow800,
  FillOrange20090,
  OutlineOrange200b2,
}

enum ButtonFontStyle {
  InterBold12,
  InterMedium8,
  InterBold12WhiteA700,
  InterBold12Bluegray80001,
  InterSemiBold8,
  InterBold10,
}
