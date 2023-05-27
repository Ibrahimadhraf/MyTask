import '../models/plants_one_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlantsOneItemWidget extends StatelessWidget {
  PlantsOneItemWidget(this.plantsOneItemModelObj);

  PlantsOneItemModel plantsOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 3,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              96,
            ),
            width: getHorizontalSize(
              176,
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
                    176,
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
                    right: 6,
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
              top: 6,
            ),
            child: Row(
              children: [
                Text(
                  "lbl_wildflower".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold12,
                ),
                Container(
                  width: getHorizontalSize(
                    29,
                  ),
                  margin: getMargin(
                    left: 78,
                    top: 2,
                    bottom: 1,
                  ),
                  padding: getPadding(
                    left: 2,
                    top: 1,
                    right: 2,
                    bottom: 1,
                  ),
                  decoration: AppDecoration.txtFillYellow80033.copyWith(
                    borderRadius: BorderRadiusStyle.txtCircleBorder6,
                  ),
                  child: Text(
                    "lbl_wf0123".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular6Bluegray80001,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 6,
              top: 5,
              bottom: 6,
            ),
            child: Row(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgRefreshBlueGray80001,
                  height: getSize(
                    6,
                  ),
                  width: getSize(
                    6,
                  ),
                  margin: getMargin(
                    top: 1,
                    bottom: 2,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 4,
                  ),
                  child: Text(
                    "lbl_tree".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular8,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgMailBlueGray400,
                  height: getVerticalSize(
                    6,
                  ),
                  width: getHorizontalSize(
                    7,
                  ),
                  margin: getMargin(
                    left: 8,
                    top: 1,
                    bottom: 2,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                  ),
                  child: Text(
                    "lbl_sand".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
