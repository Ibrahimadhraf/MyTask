import '../models/plant_of_the_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlantOfTheItemWidget extends StatelessWidget {
  PlantOfTheItemWidget(this.plantOfTheItemModelObj);

  PlantOfTheItemModel plantOfTheItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 8,
          ),
          padding: getPadding(
            all: 3,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle59140x130,
                height: getVerticalSize(
                  140,
                ),
                width: getHorizontalSize(
                  130,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    10,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 13,
                  top: 8,
                  bottom: 13,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "lbl_wildflower".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold14,
                        ),
                        Container(
                          width: getHorizontalSize(
                            42,
                          ),
                          margin: getMargin(
                            left: 5,
                            bottom: 2,
                          ),
                          padding: getPadding(
                            left: 5,
                            top: 1,
                            right: 5,
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
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 6,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgCheckmarkBlueGray80001,
                            height: getSize(
                              9,
                            ),
                            width: getSize(
                              9,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                            ),
                            child: Text(
                              "lbl_shrub".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular8,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgMailBlueGray400,
                            height: getVerticalSize(
                              9,
                            ),
                            width: getHorizontalSize(
                              10,
                            ),
                            margin: getMargin(
                              left: 4,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
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
                    Padding(
                      padding: getPadding(
                        top: 11,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgClock,
                            height: getVerticalSize(
                              9,
                            ),
                            width: getHorizontalSize(
                              7,
                            ),
                            margin: getMargin(
                              bottom: 1,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                            ),
                            child: Text(
                              "lbl_12cmx1mx12l".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        27,
                      ),
                      width: getHorizontalSize(
                        79,
                      ),
                      text: "lbl_explore".tr,
                      margin: getMargin(
                        top: 35,
                      ),
                      variant: ButtonVariant.FillOrange20090,
                      shape: ButtonShape.RoundedBorder13,
                      padding: ButtonPadding.PaddingAll7,
                      fontStyle: ButtonFontStyle.InterBold10,
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
