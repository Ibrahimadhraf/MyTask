import '../plant_details_screen/widgets/listgroup_item_widget.dart';
import '../plant_details_screen/widgets/listtotalplants_item_widget.dart';
import 'bloc/plant_details_bloc.dart';
import 'models/listgroup_item_model.dart';
import 'models/listtotalplants_item_model.dart';
import 'models/plant_details_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/home_page/home_page.dart';
import 'package:ebrahim_s_application1/presentation/settings_one_page/settings_one_page.dart';
import 'package:ebrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PlantDetailsScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PlantDetailsBloc>(
      create: (context) => PlantDetailsBloc(PlantDetailsState(
        plantDetailsModelObj: PlantDetailsModel(),
      ))
        ..add(PlantDetailsInitialEvent()),
      child: PlantDetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray50,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 101,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                            style: AppStyle.txtInterSemiBold18,
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
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterSemiBold8,
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
                              CustomImageView(
                                svgPath: ImageConstant.imgQrcodeWhiteA70065x65,
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
                                      fontStyle: ButtonFontStyle.InterSemiBold8,
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
                                      svgPath:
                                          ImageConstant.imgCheckmarkGray30002,
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
                                        style:
                                            AppStyle.txtInterRegular14Gray400,
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
                                      svgPath: ImageConstant.imgEyeGray30002,
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
                Padding(
                  padding: getPadding(
                    left: 26,
                    top: 20,
                    right: 55,
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
                          style: AppStyle.txtInterMedium14Teal70003,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "lbl_statistics".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium14Teal70003,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgGroup1000000910,
                  height: getVerticalSize(
                    5,
                  ),
                  width: getHorizontalSize(
                    377,
                  ),
                  alignment: Alignment.center,
                  margin: getMargin(
                    top: 10,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      left: 22,
                      top: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: getPadding(
                            left: 11,
                            top: 14,
                            right: 11,
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
                                "lbl_water_used".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12Bluegray40001,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Text(
                                  "lbl_3000_m".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16GreenA700,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgVector13,
                                height: getVerticalSize(
                                  22,
                                ),
                                width: getHorizontalSize(
                                  93,
                                ),
                                margin: getMargin(
                                  top: 22,
                                  bottom: 4,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            123,
                          ),
                          child: BlocSelector<PlantDetailsBloc,
                              PlantDetailsState, PlantDetailsModel?>(
                            selector: (state) => state.plantDetailsModelObj,
                            builder: (context, plantDetailsModelObj) {
                              return ListView.separated(
                                padding: getPadding(
                                  left: 8,
                                  bottom: 2,
                                ),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      8,
                                    ),
                                  );
                                },
                                itemCount: plantDetailsModelObj
                                        ?.listtotalplantsItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  ListtotalplantsItemModel model =
                                      plantDetailsModelObj
                                                  ?.listtotalplantsItemList[
                                              index] ??
                                          ListtotalplantsItemModel();
                                  return ListtotalplantsItemWidget(
                                    model,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    518,
                  ),
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 22,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: getVerticalSize(
                                23,
                              ),
                              child: BlocSelector<PlantDetailsBloc,
                                  PlantDetailsState, PlantDetailsModel?>(
                                selector: (state) => state.plantDetailsModelObj,
                                builder: (context, plantDetailsModelObj) {
                                  return ListView.separated(
                                    padding: getPadding(
                                      right: 71,
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (
                                      context,
                                      index,
                                    ) {
                                      return SizedBox(
                                        height: getVerticalSize(
                                          8,
                                        ),
                                      );
                                    },
                                    itemCount: plantDetailsModelObj
                                            ?.listgroupItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListgroupItemModel model =
                                          plantDetailsModelObj
                                                  ?.listgroupItemList[index] ??
                                              ListgroupItemModel();
                                      return ListgroupItemWidget(
                                        model,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                240,
                              ),
                              width: getHorizontalSize(
                                384,
                              ),
                              margin: getMargin(
                                top: 15,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: getVerticalSize(
                                        225,
                                      ),
                                      width: getHorizontalSize(
                                        384,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            20,
                                          ),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: ColorConstant.blueGray5002,
                                            spreadRadius: getHorizontalSize(
                                              2,
                                            ),
                                            blurRadius: getHorizontalSize(
                                              2,
                                            ),
                                            offset: Offset(
                                              0,
                                              0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: getPadding(
                                        left: 18,
                                        top: 14,
                                        right: 18,
                                        bottom: 14,
                                      ),
                                      decoration:
                                          AppDecoration.fillWhiteA700.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 1,
                                            ),
                                            child: Text(
                                              "lbl_irrigation".tr.toUpperCase(),
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular13Bluegray90001
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  1.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 1,
                                              top: 5,
                                            ),
                                            child: Text(
                                              "lbl_1567_00".tr.toUpperCase(),
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular37,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 13,
                                              right: 6,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      right: 10,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocationGray100,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                      right: 10,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocationGray100,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                      right: 10,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgOverflowmenu,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                      right: 10,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocationGray100,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                      right: 10,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgOverflowmenu,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                      right: 10,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                      right: 10,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                      right: 10,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                      right: 10,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                      right: 10,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                      right: 10,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown,
                                                    height: getVerticalSize(
                                                      98,
                                                    ),
                                                    width: getHorizontalSize(
                                                      8,
                                                    ),
                                                    margin: getMargin(
                                                      left: 10,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 6,
                                              right: 5,
                                              bottom: 10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "lbl_j".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_f".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_m".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_a".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_m".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_j".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_j".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_a".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_s".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_o".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_n".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_d".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium13
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      1.0,
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
                                ],
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 14,
                                right: 93,
                              ),
                              padding: getPadding(
                                left: 41,
                                top: 14,
                                right: 41,
                                bottom: 14,
                              ),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 1,
                                      top: 8,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: getSize(
                                            135,
                                          ),
                                          width: getSize(
                                            135,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "lbl_208_00".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterMedium19,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: ColorConstant
                                                          .gray40051,
                                                      width: getHorizontalSize(
                                                        7,
                                                      ),
                                                    ),
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder67,
                                                  ),
                                                  child: Container(
                                                    height: getSize(
                                                      135,
                                                    ),
                                                    width: getSize(
                                                      135,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineGray40051
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder67,
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVector134x67,
                                                          height:
                                                              getVerticalSize(
                                                            134,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            67,
                                                          ),
                                                          radius: BorderRadius
                                                              .circular(
                                                            getHorizontalSize(
                                                              22,
                                                            ),
                                                          ),
                                                          alignment: Alignment
                                                              .centerRight,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: getSize(
                                            135,
                                          ),
                                          width: getSize(
                                            135,
                                          ),
                                          margin: getMargin(
                                            left: 31,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "lbl_328_00".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterMedium19,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: ColorConstant
                                                          .gray40051,
                                                      width: getHorizontalSize(
                                                        7,
                                                      ),
                                                    ),
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder67,
                                                  ),
                                                  child: Container(
                                                    height: getSize(
                                                      135,
                                                    ),
                                                    width: getSize(
                                                      135,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineGray40051
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder67,
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVector134x114,
                                                          height:
                                                              getVerticalSize(
                                                            134,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            114,
                                                          ),
                                                          radius: BorderRadius
                                                              .circular(
                                                            getHorizontalSize(
                                                              22,
                                                            ),
                                                          ),
                                                          alignment: Alignment
                                                              .centerRight,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "lbl_last_month".tr.toUpperCase(),
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterMedium11Teal800
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              1.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 85,
                                          ),
                                          child: Text(
                                            "lbl_this_month".tr.toUpperCase(),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterMedium11Teal800
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                1.0,
                                              ),
                                            ),
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
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.maxFinite,
                          margin: getMargin(
                            top: 384,
                          ),
                          padding: getPadding(
                            left: 23,
                            top: 14,
                            right: 23,
                            bottom: 14,
                          ),
                          decoration:
                              AppDecoration.gradientBluegray5001Bluegray5000,
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
                                fontStyle:
                                    ButtonFontStyle.InterBold12Bluegray80001,
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
