import 'bloc/settings_one_bloc.dart';
import 'models/settings_one_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SettingsOnePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsOneBloc>(
        create: (context) => SettingsOneBloc(
            SettingsOneState(settingsOneModelObj: SettingsOneModel()))
          ..add(SettingsOneInitialEvent()),
        child: SettingsOnePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsOneBloc, SettingsOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blueGray50,
              body: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.fillBluegray50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      padding: getPadding(
                                          left: 147,
                                          top: 11,
                                          right: 147,
                                          bottom: 11),
                                      decoration: AppDecoration.fillTeal800,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getVerticalSize(21),
                                                width: getHorizontalSize(133),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.teal900,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                10))))
                                          ]))),
                              Container(
                                  width: double.maxFinite,
                                  padding: getPadding(
                                      left: 24, top: 23, right: 24, bottom: 23),
                                  decoration: AppDecoration.fillTeal800,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(17),
                                            width: getHorizontalSize(22),
                                            margin:
                                                getMargin(top: 4, bottom: 4),
                                            onTap: () {
                                              onTapImgArrowleft(context);
                                            }),
                                        Padding(
                                            padding: getPadding(top: 4),
                                            child: Text("lbl_settings".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterBold18)),
                                        Container(
                                            height: getVerticalSize(24),
                                            width: getHorizontalSize(27),
                                            margin:
                                                getMargin(top: 1, bottom: 1),
                                            padding:
                                                getPadding(left: 2, right: 2),
                                            decoration:
                                                AppDecoration.fillTeal800,
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSearch,
                                                  height: getSize(18),
                                                  width: getSize(18),
                                                  alignment:
                                                      Alignment.bottomRight)
                                            ]))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 24, top: 32, right: 24),
                                  padding: getPadding(all: 18),
                                  decoration: AppDecoration.outlineBluegray40033
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 11, top: 2, bottom: 1),
                                            child: Text("lbl_dark_mode".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16Bluegray80001)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCameraBlueGray1000219x33,
                                            height: getVerticalSize(19),
                                            width: getHorizontalSize(33),
                                            margin: getMargin(top: 3))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 24, top: 16, right: 24),
                                  padding: getPadding(all: 18),
                                  decoration: AppDecoration.outlineBluegray40033
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 11, top: 1, bottom: 1),
                                            child: Text(
                                                "msg_push_notification".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16Bluegray80001)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCameraTeal70003,
                                            height: getVerticalSize(19),
                                            width: getHorizontalSize(33),
                                            margin: getMargin(top: 3))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 24, top: 16, right: 24),
                                  padding: getPadding(
                                      left: 11, top: 17, right: 11, bottom: 17),
                                  decoration: AppDecoration.outlineBluegray40033
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 19, top: 3),
                                            child: Text("lbl_language".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16Bluegray80001)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray80001,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(bottom: 4))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 24, top: 16, right: 24),
                                  padding: getPadding(
                                      left: 11, top: 17, right: 11, bottom: 17),
                                  decoration: AppDecoration.outlineBluegray40033
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 19, top: 2, bottom: 1),
                                            child: Text("lbl_about".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16Bluegray80001)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray80001,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(bottom: 4))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 24, top: 16, right: 24),
                                  padding: getPadding(
                                      left: 11, top: 17, right: 11, bottom: 17),
                                  decoration: AppDecoration.outlineBluegray40033
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 19, top: 2, bottom: 1),
                                            child: Text("lbl_contact".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16Bluegray80001)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray80001,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(bottom: 4))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 24, top: 16, right: 24),
                                  padding: getPadding(
                                      left: 11, top: 17, right: 11, bottom: 17),
                                  decoration: AppDecoration.outlineBluegray40033
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 19, top: 3),
                                            child: Text("lbl_share_app".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16Bluegray80001)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray80001,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(bottom: 4))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 24, top: 16, right: 24),
                                  padding: getPadding(
                                      left: 11, top: 17, right: 11, bottom: 17),
                                  decoration: AppDecoration.outlineBluegray40033
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 19, top: 3),
                                            child: Text("lbl_help".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16Bluegray80001)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray80001,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(bottom: 4))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 24, top: 16, right: 24),
                                  padding: getPadding(
                                      left: 11, top: 17, right: 11, bottom: 17),
                                  decoration: AppDecoration.outlineBluegray40033
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 19, top: 2, bottom: 1),
                                            child: Text(
                                                "msg_terms_conditions".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16Bluegray80001)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray80001,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(bottom: 4))
                                      ])),
                              Container(
                                  margin: getMargin(
                                      left: 24, top: 16, right: 24, bottom: 9),
                                  padding: getPadding(
                                      left: 11, top: 17, right: 11, bottom: 17),
                                  decoration: AppDecoration.outlineBluegray40033
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 19, top: 3),
                                            child: Text(
                                                "msg_privacy_and_ploicy".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16Bluegray80001)),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray80001,
                                            height: getSize(20),
                                            width: getSize(20),
                                            margin: getMargin(bottom: 4))
                                      ]))
                            ])
                      ]))));
    });
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
