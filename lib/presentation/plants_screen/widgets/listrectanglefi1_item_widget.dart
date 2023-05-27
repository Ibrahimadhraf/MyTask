import '../models/listrectanglefi1_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectanglefi1ItemWidget extends StatelessWidget {
  Listrectanglefi1ItemWidget(this.listrectanglefi1ItemModelObj);

  Listrectanglefi1ItemModel listrectanglefi1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          all: 3,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                96,
              ),
              width: getHorizontalSize(
                376,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle5996x130,
                    height: getVerticalSize(
                      96,
                    ),
                    width: getHorizontalSize(
                      376,
                    ),
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          10,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          10,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomIconButton(
                    height: 24,
                    width: 24,
                    margin: getMargin(
                      top: 5,
                      right: 8,
                    ),
                    variant: IconButtonVariant.FillTeal80056,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgComputer,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 6,
                top: 13,
                right: 10,
                bottom: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "lbl_wildflower".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold14,
                  ),
                  Container(
                    width: getHorizontalSize(
                      41,
                    ),
                    margin: getMargin(
                      left: 6,
                      top: 2,
                    ),
                    padding: getPadding(
                      left: 3,
                      top: 1,
                      right: 3,
                      bottom: 1,
                    ),
                    decoration: AppDecoration.txtFillYellow80033.copyWith(
                      borderRadius: BorderRadiusStyle.txtCircleBorder6,
                    ),
                    child: Text(
                      "lbl_wf0123".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular8Bluegray80001,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgCheckmarkBlueGray800017x7,
                    height: getSize(
                      7,
                    ),
                    width: getSize(
                      7,
                    ),
                    margin: getMargin(
                      top: 7,
                      bottom: 2,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 3,
                      top: 4,
                    ),
                    child: Text(
                      "lbl_tree".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular10Bluegray400,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgMailBlueGray400,
                    height: getVerticalSize(
                      7,
                    ),
                    width: getHorizontalSize(
                      9,
                    ),
                    margin: getMargin(
                      left: 10,
                      top: 6,
                      bottom: 2,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 3,
                      top: 4,
                    ),
                    child: Text(
                      "lbl_sand".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular10Bluegray400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
