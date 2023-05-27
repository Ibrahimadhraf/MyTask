import '../models/listtotalplants_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListtotalplantsItemWidget extends StatelessWidget {
  ListtotalplantsItemWidget(this.listtotalplantsItemModelObj);

  ListtotalplantsItemModel listtotalplantsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 8,
        ),
        padding: getPadding(
          left: 13,
          top: 14,
          right: 13,
          bottom: 14,
        ),
        decoration: AppDecoration.outlineGray90019.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              listtotalplantsItemModelObj.totalplantsTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular12Bluegray40001,
            ),
            Padding(
              padding: getPadding(
                top: 12,
              ),
              child: Text(
                listtotalplantsItemModelObj.totalnumberTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular16RedA200,
              ),
            ),
            CustomImageView(
              svgPath: ImageConstant.imgVector12,
              height: getVerticalSize(
                26,
              ),
              width: getHorizontalSize(
                88,
              ),
              margin: getMargin(
                left: 4,
                top: 16,
                bottom: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
