import 'bloc/settings_two_bloc.dart';
import 'models/settings_two_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SettingsTwoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsTwoBloc>(
      create: (context) => SettingsTwoBloc(SettingsTwoState(
        settingsTwoModelObj: SettingsTwoModel(),
      ))
        ..add(SettingsTwoInitialEvent()),
      child: SettingsTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsTwoBloc, SettingsTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
              height: getVerticalSize(
                65,
              ),
              leadingWidth: 52,
              leading: CustomImageView(
                imagePath: ImageConstant.imgLeft,
                height: getSize(
                  28,
                ),
                width: getSize(
                  28,
                ),
                margin: getMargin(
                  left: 24,
                  top: 14,
                  bottom: 14,
                ),
              ),
              centerTitle: true,
              title: Text(
                "lbl_settings".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewayMedium20,
              ),
            ),
            body: Container(
              width: getHorizontalSize(
                360,
              ),
              padding: getPadding(
                left: 9,
                top: 33,
                right: 9,
                bottom: 33,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: getMargin(
                      left: 15,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 16,
                      right: 18,
                      bottom: 16,
                    ),
                    decoration: AppDecoration.outlineBlue50.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Text(
                            "lbl_permission".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRegular16,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCamera,
                          height: getVerticalSize(
                            19,
                          ),
                          width: getHorizontalSize(
                            33,
                          ),
                          margin: getMargin(
                            right: 13,
                            bottom: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 15,
                      top: 22,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 15,
                      right: 18,
                      bottom: 15,
                    ),
                    decoration: AppDecoration.outlineBlue50.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 1,
                          ),
                          child: Text(
                            "msg_push_notification".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRegular16,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCameraBlueGray10002,
                          height: getVerticalSize(
                            19,
                          ),
                          width: getHorizontalSize(
                            33,
                          ),
                          margin: getMargin(
                            right: 13,
                            bottom: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 15,
                      top: 22,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 14,
                      right: 18,
                      bottom: 14,
                    ),
                    decoration: AppDecoration.outlineBlue50.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_dark_mood".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRegular16,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCameraBlueGray10002,
                          height: getVerticalSize(
                            19,
                          ),
                          width: getHorizontalSize(
                            33,
                          ),
                          margin: getMargin(
                            right: 13,
                            bottom: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 15,
                      top: 22,
                    ),
                    padding: getPadding(
                      left: 12,
                      top: 15,
                      right: 12,
                      bottom: 15,
                    ),
                    decoration: AppDecoration.outlineBlue50.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 6,
                            top: 4,
                          ),
                          child: Text(
                            "lbl_security".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRegular16,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                          margin: getMargin(
                            top: 2,
                            bottom: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 15,
                      top: 22,
                    ),
                    padding: getPadding(
                      left: 12,
                      top: 15,
                      right: 12,
                      bottom: 15,
                    ),
                    decoration: AppDecoration.outlineBlue50.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 6,
                            top: 4,
                          ),
                          child: Text(
                            "lbl_help".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRegular16,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                          margin: getMargin(
                            top: 2,
                            bottom: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 15,
                      top: 22,
                    ),
                    padding: getPadding(
                      left: 12,
                      top: 15,
                      right: 12,
                      bottom: 15,
                    ),
                    decoration: AppDecoration.outlineBlue50.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 6,
                            top: 5,
                          ),
                          child: Text(
                            "lbl_langauge".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRegular16,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                          margin: getMargin(
                            top: 2,
                            bottom: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 15,
                      top: 22,
                      bottom: 5,
                    ),
                    padding: getPadding(
                      left: 12,
                      top: 15,
                      right: 12,
                      bottom: 15,
                    ),
                    decoration: AppDecoration.outlineBlue50.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 6,
                            top: 4,
                          ),
                          child: Text(
                            "msg_about_application".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayRegular16,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                          margin: getMargin(
                            top: 2,
                            bottom: 1,
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
      },
    );
  }
}
