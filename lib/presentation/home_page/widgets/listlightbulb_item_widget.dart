import '../models/listlightbulb_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListlightbulbItemWidget extends StatelessWidget {
  ListlightbulbItemWidget(this.listlightbulbItemModelObj);

  ListlightbulbItemModel listlightbulbItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 12,
          ),
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
                  130,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle593,
                      height: getVerticalSize(
                        96,
                      ),
                      width: getHorizontalSize(
                        130,
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
                        right: 5,
                      ),
                      variant: IconButtonVariant.FillTeal800cc,
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgLightbulb,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        listlightbulbItemModelObj.nameTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold12,
                      ),
                      Container(
                        width: getHorizontalSize(
                          29,
                        ),
                        margin: getMargin(
                          left: 28,
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
                          listlightbulbItemModelObj.codeTxt,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular6Bluegray80001,
                        ),
                      ),
                    ],
                  ),
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
        ),
      ),
    );
  }
}
