import '../models/filtercategorie_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiltercategorieItemWidget extends StatelessWidget {
  FiltercategorieItemWidget(this.filtercategorieItemModelObj);

  FiltercategorieItemModel filtercategorieItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            57,
          ),
          margin: getMargin(
            right: 8,
          ),
          padding: getPadding(
            left: 20,
            top: 6,
            right: 20,
            bottom: 6,
          ),
          decoration: AppDecoration.txtFillOrange200.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder15,
          ),
          child: Text(
            filtercategorieItemModelObj.frameTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular14Bluegray80001,
          ),
        ),
      ),
    );
  }
}
