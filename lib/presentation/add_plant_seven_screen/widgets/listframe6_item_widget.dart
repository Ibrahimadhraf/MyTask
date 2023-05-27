import '../models/listframe6_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listframe6ItemWidget extends StatelessWidget {
  Listframe6ItemWidget(this.listframe6ItemModelObj);

  Listframe6ItemModel listframe6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 13,
        bottom: 13,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              bottom: 25,
            ),
            color: ColorConstant.green40033,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Container(
              height: getVerticalSize(
                42,
              ),
              width: getHorizontalSize(
                46,
              ),
              padding: getPadding(
                left: 9,
                top: 7,
                right: 9,
                bottom: 7,
              ),
              decoration: AppDecoration.fillGreen40033.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgFrame,
                    height: getSize(
                      28,
                    ),
                    width: getSize(
                      28,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 6,
                      ),
                      child: Text(
                        "lbl_uria_x365".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold14,
                      ),
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        17,
                      ),
                      width: getHorizontalSize(
                        44,
                      ),
                      text: "lbl_plant".tr,
                      margin: getMargin(
                        left: 6,
                        top: 1,
                        bottom: 6,
                      ),
                      variant: ButtonVariant.FillGreen400,
                      shape: ButtonShape.RoundedBorder8,
                      padding: ButtonPadding.PaddingAll3,
                      fontStyle: ButtonFontStyle.InterMedium8,
                    ),
                    CustomIconButton(
                      height: 24,
                      width: 24,
                      margin: getMargin(
                        left: 123,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgEdit,
                      ),
                    ),
                    CustomIconButton(
                      height: 24,
                      width: 24,
                      margin: getMargin(
                        left: 5,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgTrash,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Text(
                          "lbl_type".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular12Bluegray80001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 1,
                        ),
                        child: Text(
                          "lbl_organic".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold12Bluegray80001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 18,
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_dose".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular12Bluegray80001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 5,
                          top: 1,
                        ),
                        child: Text(
                          "lbl_2kg".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold12Bluegray80001,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "lbl_date".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular12Bluegray80001,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 7,
                        ),
                        child: Text(
                          "lbl_12_dec_2023".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold12Bluegray80001,
                        ),
                      ),
                    ],
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
