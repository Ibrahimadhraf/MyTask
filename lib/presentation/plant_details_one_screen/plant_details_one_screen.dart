import 'bloc/plant_details_one_bloc.dart';
import 'models/plant_details_one_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/home_page/home_page.dart';
import 'package:ebrahim_s_application1/presentation/settings_one_page/settings_one_page.dart';
import 'package:ebrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PlantDetailsOneScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PlantDetailsOneBloc>(
      create: (context) => PlantDetailsOneBloc(PlantDetailsOneState(
        plantDetailsOneModelObj: PlantDetailsOneModel(),
      ))
        ..add(PlantDetailsOneInitialEvent()),
      child: PlantDetailsOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantDetailsOneBloc, PlantDetailsOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.blueGray50,
            body: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        212,
                      ),
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: double.maxFinite,
                              margin: getMargin(
                                bottom: 1,
                              ),
                              padding: getPadding(
                                top: 28,
                                bottom: 28,
                              ),
                              decoration:
                                  AppDecoration.gradientBlack900b2Black90019,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 101,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "lbl_wildflower".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterSemiBold18,
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 11,
                                                top: 3,
                                              ),
                                              padding: getPadding(
                                                left: 6,
                                                top: 4,
                                                right: 6,
                                                bottom: 4,
                                              ),
                                              decoration: AppDecoration
                                                  .fillYellow800
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "lbl_wf0123".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold8,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 1,
                                            top: 12,
                                          ),
                                          child: Row(
                                            children: [
                                              CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCheckmarkGray30002,
                                                height: getVerticalSize(
                                                  12,
                                                ),
                                                width: getHorizontalSize(
                                                  13,
                                                ),
                                                margin: getMargin(
                                                  top: 2,
                                                  bottom: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 5,
                                                ),
                                                child: Text(
                                                  "lbl_tree".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14Gray400,
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant.imgMail,
                                                height: getVerticalSize(
                                                  12,
                                                ),
                                                width: getHorizontalSize(
                                                  15,
                                                ),
                                                margin: getMargin(
                                                  left: 19,
                                                  top: 2,
                                                  bottom: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 6,
                                                ),
                                                child: Text(
                                                  "lbl_sand".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14Bluegray100,
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgEyeGray30002,
                                                height: getSize(
                                                  12,
                                                ),
                                                width: getSize(
                                                  12,
                                                ),
                                                margin: getMargin(
                                                  left: 22,
                                                  top: 2,
                                                  bottom: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 5,
                                                ),
                                                child: Text(
                                                  "lbl_12cmx1mx12l".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14Bluegray10001,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgQrcodeWhiteA700,
                                    height: getSize(
                                      65,
                                    ),
                                    width: getSize(
                                      65,
                                    ),
                                    margin: getMargin(
                                      top: 86,
                                      bottom: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle58269x428,
                            height: getVerticalSize(
                              211,
                            ),
                            width: getHorizontalSize(
                              428,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: getPadding(
                                left: 30,
                                top: 29,
                                right: 30,
                                bottom: 29,
                              ),
                              decoration:
                                  AppDecoration.gradientBlack900b2Black90019,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 100,
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            "lbl_wildflower".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold18,
                                          ),
                                        ),
                                        CustomButton(
                                          height: getVerticalSize(
                                            20,
                                          ),
                                          width: getHorizontalSize(
                                            45,
                                          ),
                                          text: "lbl_wf0123".tr,
                                          margin: getMargin(
                                            left: 11,
                                            top: 3,
                                          ),
                                          variant: ButtonVariant.FillYellow800,
                                          shape: ButtonShape.RoundedBorder8,
                                          padding: ButtonPadding.PaddingAll3,
                                          fontStyle:
                                              ButtonFontStyle.InterSemiBold8,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 1,
                                      top: 12,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckmarkGray30002,
                                          height: getVerticalSize(
                                            12,
                                          ),
                                          width: getHorizontalSize(
                                            13,
                                          ),
                                          margin: getMargin(
                                            top: 2,
                                            bottom: 2,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 5,
                                          ),
                                          child: Text(
                                            "lbl_tree".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular14Gray400,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgMail,
                                          height: getVerticalSize(
                                            12,
                                          ),
                                          width: getHorizontalSize(
                                            15,
                                          ),
                                          margin: getMargin(
                                            left: 19,
                                            top: 2,
                                            bottom: 2,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 6,
                                          ),
                                          child: Text(
                                            "lbl_sand".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular14Bluegray100,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgEyeGray30002,
                                          height: getSize(
                                            12,
                                          ),
                                          width: getSize(
                                            12,
                                          ),
                                          margin: getMargin(
                                            left: 22,
                                            top: 2,
                                            bottom: 2,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 5,
                                          ),
                                          child: Text(
                                            "lbl_12cmx1mx12l".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular14Bluegray10001,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        675,
                      ),
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 20,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: getPadding(
                                left: 24,
                                right: 27,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 2,
                                      right: 28,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "msg_plant_information".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium14,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 33,
                                          ),
                                          child: Text(
                                            "lbl_transaction".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium14Teal70003,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "lbl_statistics".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterMedium14Bluegray400,
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant
                                        .imgGroup1000000870BlueGray10002,
                                    height: getVerticalSize(
                                      5,
                                    ),
                                    width: getHorizontalSize(
                                      377,
                                    ),
                                    margin: getMargin(
                                      top: 10,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 25,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgInfo,
                                          height: getSize(
                                            18,
                                          ),
                                          width: getSize(
                                            18,
                                          ),
                                          margin: getMargin(
                                            bottom: 2,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 8,
                                          ),
                                          child: Text(
                                            "msg_plant_transactions2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomButton(
                                    height: getVerticalSize(
                                      43,
                                    ),
                                    text: "msg_add_transaction".tr,
                                    margin: getMargin(
                                      left: 6,
                                      top: 15,
                                    ),
                                    variant: ButtonVariant.OutlineOrange200b2,
                                    padding: ButtonPadding.PaddingT12,
                                    fontStyle: ButtonFontStyle
                                        .InterBold12Bluegray80001,
                                    prefixWidget: Container(
                                      margin: getMargin(
                                        right: 7,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: ColorConstant.blueGray80001,
                                          width: getHorizontalSize(
                                            1,
                                          ),
                                          strokeAlign: strokeAlignCenter,
                                        ),
                                      ),
                                      child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgPlusBlueGray80001,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 20,
                                      right: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                              ),
                                              child: Text(
                                                "msg_plant_introduced".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular12,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray800018x4,
                                              height: getVerticalSize(
                                                8,
                                              ),
                                              width: getHorizontalSize(
                                                4,
                                              ),
                                              margin: getMargin(
                                                top: 1,
                                                bottom: 4,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 28,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "msg_sat_04_12_3_29".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular10Bluegray80090,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 16,
                                      right: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                              ),
                                              child: Text(
                                                "msg_plant_dispatched".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular12,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray800018x4,
                                              height: getVerticalSize(
                                                8,
                                              ),
                                              width: getHorizontalSize(
                                                4,
                                              ),
                                              margin: getMargin(
                                                top: 1,
                                                bottom: 4,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 28,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "msg_sat_04_12_3_29".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular10Bluegray80090,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 15,
                                      right: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                              margin: getMargin(
                                                top: 1,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                              ),
                                              child: Text(
                                                "msg_start_plant_process".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular12,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray800018x4,
                                              height: getVerticalSize(
                                                8,
                                              ),
                                              width: getHorizontalSize(
                                                4,
                                              ),
                                              margin: getMargin(
                                                top: 2,
                                                bottom: 3,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 28,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "msg_sat_04_12_3_29".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular10Bluegray80090,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 15,
                                      right: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                              margin: getMargin(
                                                top: 1,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                              ),
                                              child: Text(
                                                "msg_plant_first_fertilizer".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular12,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray800018x4,
                                              height: getVerticalSize(
                                                8,
                                              ),
                                              width: getHorizontalSize(
                                                4,
                                              ),
                                              margin: getMargin(
                                                top: 3,
                                                bottom: 3,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 28,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "msg_sat_04_12_5_12".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular10Bluegray80090,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 16,
                                      right: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                              ),
                                              child: Text(
                                                "msg_plant_first_irrigation".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular12,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray800018x4,
                                              height: getVerticalSize(
                                                8,
                                              ),
                                              width: getHorizontalSize(
                                                4,
                                              ),
                                              margin: getMargin(
                                                top: 1,
                                                bottom: 4,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 28,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "msg_sat_04_12_10_29".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular10Bluegray80090,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 16,
                                      right: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                              ),
                                              child: Text(
                                                "msg_plant_experienced".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular12,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray800018x4,
                                              height: getVerticalSize(
                                                8,
                                              ),
                                              width: getHorizontalSize(
                                                4,
                                              ),
                                              margin: getMargin(
                                                top: 1,
                                                bottom: 4,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 28,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "msg_sun_05_12_1_05".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular10Bluegray80090,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 17,
                                      right: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                              ),
                                              child: Text(
                                                "lbl_plant_pruning".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular12,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray800018x4,
                                              height: getVerticalSize(
                                                8,
                                              ),
                                              width: getHorizontalSize(
                                                4,
                                              ),
                                              margin: getMargin(
                                                top: 1,
                                                bottom: 4,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 28,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "msg_sat_04_12_3_29".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular10Bluegray80090,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 17,
                                      right: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                              ),
                                              child: Text(
                                                "lbl_plant_weeding".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular12,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray800018x4,
                                              height: getVerticalSize(
                                                8,
                                              ),
                                              width: getHorizontalSize(
                                                4,
                                              ),
                                              margin: getMargin(
                                                top: 1,
                                                bottom: 4,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 28,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "msg_sat_04_12_3_29".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular10Bluegray80090,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 17,
                                      right: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                              ),
                                              child: Text(
                                                "msg_plant_replacement".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular12,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray800018x4,
                                              height: getVerticalSize(
                                                8,
                                              ),
                                              width: getHorizontalSize(
                                                4,
                                              ),
                                              margin: getMargin(
                                                top: 1,
                                                bottom: 4,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 28,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "msg_sat_04_12_3_29".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular10Bluegray80090,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 17,
                                      right: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: getSize(
                                                14,
                                              ),
                                              width: getSize(
                                                14,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.blueGray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                              ),
                                              child: Text(
                                                "msg_plant_review_development"
                                                    .tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular12,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray800018x4,
                                              height: getVerticalSize(
                                                8,
                                              ),
                                              width: getHorizontalSize(
                                                4,
                                              ),
                                              margin: getMargin(
                                                top: 1,
                                                bottom: 4,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 28,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "msg_sat_04_12_3_29".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular10Bluegray80090,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.maxFinite,
                              margin: getMargin(
                                top: 541,
                              ),
                              padding: getPadding(
                                left: 23,
                                top: 14,
                                right: 23,
                                bottom: 14,
                              ),
                              decoration: AppDecoration
                                  .gradientBluegray5001Bluegray5000,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomButton(
                                    height: getVerticalSize(
                                      40,
                                    ),
                                    width: getHorizontalSize(
                                      141,
                                    ),
                                    text: "lbl_print_qr_code".tr,
                                    margin: getMargin(
                                      top: 66,
                                    ),
                                    shape: ButtonShape.CircleBorder20,
                                    padding: ButtonPadding.PaddingT12,
                                    fontStyle: ButtonFontStyle
                                        .InterBold12Bluegray80001,
                                    prefixWidget: Container(
                                      margin: getMargin(
                                        right: 9,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgLiqrcode,
                                      ),
                                    ),
                                  ),
                                  CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    margin: getMargin(
                                      left: 19,
                                      top: 66,
                                    ),
                                    variant: IconButtonVariant.FillTeal800,
                                    shape: IconButtonShape.CircleBorder21,
                                    padding: IconButtonPadding.PaddingAll12,
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgUpload,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CustomBottomBar(
              onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              },
            ),
          ),
        );
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Plants:
        return "/";
      case BottomBarEnum.Scan:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      case BottomBarEnum.Settings:
        return AppRoutes.settingsOnePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.settingsOnePage:
        return SettingsOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
