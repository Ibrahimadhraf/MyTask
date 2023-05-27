import '../models/listvector13_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listvector13ItemWidget extends StatelessWidget {
  Listvector13ItemWidget(this.listvector13ItemModelObj);

  Listvector13ItemModel listvector13ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgVectorTeal800,
          height: getVerticalSize(
            8,
          ),
          width: getHorizontalSize(
            4,
          ),
          margin: getMargin(
            top: 7,
            bottom: 6,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 13,
          ),
          child: Text(
            listvector13ItemModelObj.fertilizationTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold18Teal800,
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgPlus,
          height: getSize(
            12,
          ),
          width: getSize(
            12,
          ),
          margin: getMargin(
            top: 6,
            bottom: 3,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 7,
            top: 2,
          ),
          child: Text(
            "lbl_new".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular16Teal800,
          ),
        ),
      ],
    );
  }
}