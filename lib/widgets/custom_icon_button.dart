import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

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
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillTeal80056:
        return ColorConstant.teal80056;
      case IconButtonVariant.FillTeal70001:
        return ColorConstant.teal70001;
      case IconButtonVariant.FillTeal800cc:
        return ColorConstant.teal800Cc;
      case IconButtonVariant.FillBluegray10099:
        return ColorConstant.blueGray10099;
      case IconButtonVariant.FillTeal800:
        return ColorConstant.teal800;
      case IconButtonVariant.FillWhiteA70033:
        return ColorConstant.whiteA70033;
      default:
        return ColorConstant.blueGray80014;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder21:
        return BorderRadius.circular(
          getHorizontalSize(
            21.00,
          ),
        );
      case IconButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  CircleBorder12,
  CircleBorder21,
  CircleBorder15,
}

enum IconButtonPadding {
  PaddingAll8,
  PaddingAll12,
}

enum IconButtonVariant {
  FillBluegray80014,
  FillTeal80056,
  FillTeal70001,
  FillTeal800cc,
  FillBluegray10099,
  FillTeal800,
  FillWhiteA70033,
}
