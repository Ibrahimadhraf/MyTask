import '../models/listgroup_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListgroupItemWidget extends StatelessWidget {
  ListgroupItemWidget(this.listgroupItemModelObj);

  ListgroupItemModel listgroupItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          53,
        ),
        margin: getMargin(
          right: 8,
        ),
        padding: getPadding(
          left: 17,
          top: 3,
          right: 17,
          bottom: 3,
        ),
        decoration: AppDecoration.txtFillGray30002.copyWith(
          borderRadius: BorderRadiusStyle.txtRoundedBorder11,
        ),
        child: Text(
          listgroupItemModelObj.groupTxt,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterRegular13,
        ),
      ),
    );
  }
}
