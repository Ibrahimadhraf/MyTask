import '../models/filtercategorie2_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Filtercategorie2ItemWidget extends StatelessWidget {
  Filtercategorie2ItemWidget(this.filtercategorie2ItemModelObj);

  Filtercategorie2ItemModel filtercategorie2ItemModelObj;

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
            filtercategorie2ItemModelObj.frameTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular14Bluegray80001,
          ),
        ),
      ),
    );
  }
}
