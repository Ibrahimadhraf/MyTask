import 'bloc/add_plant_eight_bloc.dart';
import 'models/add_plant_eight_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/home_page/home_page.dart';
import 'package:ebrahim_s_application1/presentation/settings_one_page/settings_one_page.dart';
import 'package:ebrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ebrahim_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddPlantEightScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddPlantEightBloc>(
        create: (context) => AddPlantEightBloc(
            AddPlantEightState(addPlantEightModelObj: AddPlantEightModel()))
          ..add(AddPlantEightInitialEvent()),
        child: AddPlantEightScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPlantEightBloc, AddPlantEightState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blueGray50,
              body: Container(
                  height: getVerticalSize(828),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle59,
                        height: getVerticalSize(270),
                        width: getHorizontalSize(428),
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            padding: getPadding(
                                left: 30, top: 38, right: 30, bottom: 38),
                            decoration: AppDecoration.gradientGray900Black90000,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowleft,
                                      height: getVerticalSize(17),
                                      width: getHorizontalSize(22),
                                      onTap: () {
                                        onTapImgArrowleft(context);
                                      }),
                                  Padding(
                                      padding: getPadding(top: 115, bottom: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 2),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(children: [
                                                        Text(
                                                            "lbl_wildflower".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold18),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    34),
                                                            margin: getMargin(
                                                                left: 6,
                                                                top: 5,
                                                                bottom: 3),
                                                            padding: getPadding(
                                                                left: 5,
                                                                top: 2,
                                                                right: 5,
                                                                bottom: 2),
                                                            decoration: AppDecoration
                                                                .txtFillYellow8007f
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .txtCircleBorder6),
                                                            child: Text(
                                                                "lbl_wf0123".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular6))
                                                      ]),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1, top: 6),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCheckmark,
                                                                height:
                                                                    getSize(8),
                                                                width:
                                                                    getSize(8),
                                                                margin:
                                                                    getMargin(
                                                                        top: 1,
                                                                        bottom:
                                                                            2)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            4),
                                                                child: Text(
                                                                    "lbl_tree"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular10)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMail,
                                                                height:
                                                                    getVerticalSize(
                                                                        8),
                                                                width:
                                                                    getHorizontalSize(
                                                                        9),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            11,
                                                                        top: 1,
                                                                        bottom:
                                                                            2)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            3),
                                                                child: Text(
                                                                    "lbl_sand"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular10Bluegray100)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector,
                                                                height:
                                                                    getVerticalSize(
                                                                        10),
                                                                width:
                                                                    getHorizontalSize(
                                                                        8),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            12,
                                                                        bottom:
                                                                            1)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            3),
                                                                child: Text(
                                                                    "lbl_12cmx1mx12l"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular10Bluegray10001))
                                                          ]))
                                                    ])),
                                            CustomIconButton(
                                                height: 42,
                                                width: 42,
                                                margin: getMargin(top: 1),
                                                variant: IconButtonVariant
                                                    .FillTeal80056,
                                                shape: IconButtonShape
                                                    .CircleBorder21,
                                                padding: IconButtonPadding
                                                    .PaddingAll12,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgUpload))
                                          ]))
                                ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding:
                                getPadding(left: 32, right: 33, bottom: 121),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 33),
                                      child: Text("msg_plant_success_rate".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular11)),
                                  Padding(
                                      padding: getPadding(top: 9),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.gray300)),
                                  SizedBox(
                                      width: getHorizontalSize(251),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1))),
                                  Padding(
                                      padding: getPadding(left: 6),
                                      child: SizedBox(
                                          height: getVerticalSize(453),
                                          child: VerticalDivider(
                                              width: getHorizontalSize(1),
                                              thickness: getVerticalSize(1),
                                              color: ColorConstant.blueGray200,
                                              indent: getHorizontalSize(92))))
                                ]))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(left: 32, top: 220),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: ColorConstant.whiteA700A5,
                                    width: getHorizontalSize(1)),
                                borderRadius: BorderRadiusStyle.circleBorder13),
                            child: Container(
                                height: getSize(26),
                                width: getSize(26),
                                decoration: AppDecoration.outlineWhiteA700a5
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder13),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgContrast,
                                          height: getSize(25),
                                          width: getSize(25),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("lbl_75".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSourceCodeProRegular8))
                                    ])))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: getPadding(left: 31, top: 291),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgInfo,
                                  height: getSize(18),
                                  width: getSize(18),
                                  margin: getMargin(top: 1)),
                              Padding(
                                  padding: getPadding(left: 8),
                                  child: Text("msg_plant_transactions".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold16))
                            ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: getPadding(left: 31, right: 28, bottom: 5),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          Container(
                                              height: getSize(14),
                                              width: getSize(14),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.blueGray200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              7)))),
                                          Padding(
                                              padding: getPadding(left: 13),
                                              child: Text(
                                                  "msg_plant_introduced".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12)),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlueGray800018x4,
                                              height: getVerticalSize(8),
                                              width: getHorizontalSize(4),
                                              margin:
                                                  getMargin(top: 1, bottom: 4))
                                        ]),
                                        Padding(
                                            padding:
                                                getPadding(left: 28, top: 3),
                                            child: Text("msg_sat_04_12_3_29".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular10Bluegray80090))
                                      ]),
                                  Padding(
                                      padding: getPadding(top: 16),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              Container(
                                                  height: getSize(14),
                                                  width: getSize(14),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  7)))),
                                              Padding(
                                                  padding: getPadding(left: 13),
                                                  child: Text(
                                                      "msg_plant_dispatched".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightBlueGray800018x4,
                                                  height: getVerticalSize(8),
                                                  width: getHorizontalSize(4),
                                                  margin: getMargin(
                                                      top: 1, bottom: 4))
                                            ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28, top: 3),
                                                child: Text(
                                                    "msg_sat_04_12_3_29".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10Bluegray80090))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 15),
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
                                                      height: getSize(14),
                                                      width: getSize(14),
                                                      margin: getMargin(top: 1),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueGray200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      7)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 13),
                                                      child: Text(
                                                          "msg_start_plant_process"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray800018x4,
                                                      height:
                                                          getVerticalSize(8),
                                                      width:
                                                          getHorizontalSize(4),
                                                      margin: getMargin(
                                                          top: 2, bottom: 3))
                                                ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28, top: 3),
                                                child: Text(
                                                    "msg_sat_04_12_3_29".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10Bluegray80090))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 15),
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
                                                      height: getSize(14),
                                                      width: getSize(14),
                                                      margin: getMargin(top: 1),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueGray200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      7)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 13),
                                                      child: Text(
                                                          "msg_plant_first_fertilizer"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray800018x4,
                                                      height:
                                                          getVerticalSize(8),
                                                      width:
                                                          getHorizontalSize(4),
                                                      margin: getMargin(
                                                          top: 3, bottom: 3))
                                                ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28, top: 3),
                                                child: Text(
                                                    "msg_sat_04_12_5_12".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10Bluegray80090))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 16),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              Container(
                                                  height: getSize(14),
                                                  width: getSize(14),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  7)))),
                                              Padding(
                                                  padding: getPadding(left: 13),
                                                  child: Text(
                                                      "msg_plant_first_irrigation"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightBlueGray800018x4,
                                                  height: getVerticalSize(8),
                                                  width: getHorizontalSize(4),
                                                  margin: getMargin(
                                                      top: 1, bottom: 4))
                                            ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28, top: 3),
                                                child: Text(
                                                    "msg_sat_04_12_10_29".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10Bluegray80090))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 16),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              Container(
                                                  height: getSize(14),
                                                  width: getSize(14),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  7)))),
                                              Padding(
                                                  padding: getPadding(left: 13),
                                                  child: Text(
                                                      "msg_plant_experienced"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightBlueGray800018x4,
                                                  height: getVerticalSize(8),
                                                  width: getHorizontalSize(4),
                                                  margin: getMargin(
                                                      top: 1, bottom: 4))
                                            ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28, top: 3),
                                                child: Text(
                                                    "msg_sun_05_12_1_05".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10Bluegray80090))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 17),
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
                                                      height: getSize(14),
                                                      width: getSize(14),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueGray200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      7)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 13),
                                                      child: Text(
                                                          "lbl_plant_pruning"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray800018x4,
                                                      height:
                                                          getVerticalSize(8),
                                                      width:
                                                          getHorizontalSize(4),
                                                      margin: getMargin(
                                                          top: 1, bottom: 4))
                                                ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28, top: 3),
                                                child: Text(
                                                    "msg_sat_04_12_3_29".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10Bluegray80090))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 17),
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
                                                      height: getSize(14),
                                                      width: getSize(14),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueGray200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      7)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 13),
                                                      child: Text(
                                                          "lbl_plant_weeding"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray800018x4,
                                                      height:
                                                          getVerticalSize(8),
                                                      width:
                                                          getHorizontalSize(4),
                                                      margin: getMargin(
                                                          top: 1, bottom: 4))
                                                ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28, top: 3),
                                                child: Text(
                                                    "msg_sat_04_12_3_29".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10Bluegray80090))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 17),
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
                                                      height: getSize(14),
                                                      width: getSize(14),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueGray200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      7)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 13),
                                                      child: Text(
                                                          "msg_plant_replacement"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray800018x4,
                                                      height:
                                                          getVerticalSize(8),
                                                      width:
                                                          getHorizontalSize(4),
                                                      margin: getMargin(
                                                          top: 1, bottom: 4))
                                                ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28, top: 3),
                                                child: Text(
                                                    "msg_sat_04_12_3_29".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10Bluegray80090))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 16),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              Container(
                                                  height: getSize(14),
                                                  width: getSize(14),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  7)))),
                                              Padding(
                                                  padding: getPadding(left: 13),
                                                  child: Text(
                                                      "msg_plant_review_development"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightBlueGray800018x4,
                                                  height: getVerticalSize(8),
                                                  width: getHorizontalSize(4),
                                                  margin: getMargin(
                                                      top: 1, bottom: 4))
                                            ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 28, top: 3),
                                                child: Text(
                                                    "msg_sat_04_12_3_29".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10Bluegray80090))
                                          ]))
                                ])))
                  ])),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
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

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
