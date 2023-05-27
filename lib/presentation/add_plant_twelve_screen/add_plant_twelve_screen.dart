import 'bloc/add_plant_twelve_bloc.dart';
import 'models/add_plant_twelve_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_radio_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddPlantTwelveScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AddPlantTwelveBloc>(
        create: (context) => AddPlantTwelveBloc(
            AddPlantTwelveState(addPlantTwelveModelObj: AddPlantTwelveModel()))
          ..add(AddPlantTwelveInitialEvent()),
        child: AddPlantTwelveScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray50,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
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
                                      left: 24, top: 25, right: 24, bottom: 25),
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
                                                getMargin(top: 3, bottom: 3),
                                            onTap: () {
                                              onTapImgArrowleft(context);
                                            }),
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text("lbl_add_plant".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterBold18)),
                                        Container(
                                            height: getVerticalSize(24),
                                            width: getHorizontalSize(27),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.teal800))
                                      ])),
                              CustomImageView(
                                  svgPath: ImageConstant.imgGroup1000000870,
                                  height: getVerticalSize(5),
                                  width: getHorizontalSize(380),
                                  margin: getMargin(top: 28)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 24, top: 12, right: 65),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgEye,
                                            height: getSize(16),
                                            width: getSize(16)),
                                        Padding(
                                            padding:
                                                getPadding(left: 8, bottom: 1),
                                            child: Text(
                                                "msg_plant_information".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterMedium11)),
                                        Padding(
                                            padding: getPadding(left: 15),
                                            child: BlocBuilder<
                                                    AddPlantTwelveBloc,
                                                    AddPlantTwelveState>(
                                                builder: (context, state) {
                                              return state
                                                      .addPlantTwelveModelObj!
                                                      .radioList
                                                      .isNotEmpty
                                                  ? Row(children: [
                                                      CustomRadioButton(
                                                          text: "lbl_plant_care"
                                                              .tr,
                                                          value: state.addPlantTwelveModelObj
                                                                      ?.radioList[
                                                                  0] ??
                                                              "",
                                                          groupValue:
                                                              state.radioGroup,
                                                          fontStyle:
                                                              RadioFontStyle
                                                                  .InterMedium11,
                                                          onChange: (value) {
                                                            context
                                                                .read<
                                                                    AddPlantTwelveBloc>()
                                                                .add(ChangeRadioButtonEvent(
                                                                    value:
                                                                        value));
                                                          }),
                                                      CustomRadioButton(
                                                          text:
                                                              "lbl_movement".tr,
                                                          value: state.addPlantTwelveModelObj
                                                                      ?.radioList[
                                                                  1] ??
                                                              "",
                                                          groupValue:
                                                              state.radioGroup,
                                                          margin: getMargin(
                                                              left: 51),
                                                          fontStyle:
                                                              RadioFontStyle
                                                                  .InterMedium11,
                                                          onChange: (value) {
                                                            context
                                                                .read<
                                                                    AddPlantTwelveBloc>()
                                                                .add(ChangeRadioButtonEvent(
                                                                    value:
                                                                        value));
                                                          })
                                                    ])
                                                  : Container();
                                            }))
                                      ]))),
                              Container(
                                  height: getVerticalSize(528),
                                  width: getHorizontalSize(380),
                                  margin: getMargin(top: 29),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding:
                                                    getPadding(bottom: 100),
                                                child: Text(
                                                    "lbl_attach_image".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12Bluegray80001))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_basic_info".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold18Teal800),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 19),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_full_botonical"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12Bluegray80001),
                                                            BlocSelector<
                                                                    AddPlantTwelveBloc,
                                                                    AddPlantTwelveState,
                                                                    TextEditingController?>(
                                                                selector: (state) =>
                                                                    state
                                                                        .frame245Controller,
                                                                builder: (context,
                                                                    frame245Controller) {
                                                                  return CustomTextFormField(
                                                                      focusNode:
                                                                          FocusNode(),
                                                                      autofocus:
                                                                          true,
                                                                      controller:
                                                                          frame245Controller,
                                                                      margin: getMargin(
                                                                          top:
                                                                              6),
                                                                      variant:
                                                                          TextFormFieldVariant
                                                                              .OutlineGray30001);
                                                                })
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 14),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_date_added_to_nursery"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12Bluegray80001),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        380),
                                                                margin:
                                                                    getMargin(
                                                                        top: 5),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            14,
                                                                        top: 10,
                                                                        right:
                                                                            14,
                                                                        bottom:
                                                                            10),
                                                                decoration: AppDecoration
                                                                    .outlineGray30001
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder5),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgCalendar,
                                                                          height: getVerticalSize(
                                                                              18),
                                                                          width: getHorizontalSize(
                                                                              16),
                                                                          margin:
                                                                              getMargin(top: 1))
                                                                    ]))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_plant_form"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12Bluegray80001),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        380),
                                                                margin:
                                                                    getMargin(
                                                                        top: 6),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            14,
                                                                        top: 18,
                                                                        right:
                                                                            14,
                                                                        bottom:
                                                                            18),
                                                                decoration: AppDecoration
                                                                    .outlineGray30001
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder5),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowdownGray40001,
                                                                          height: getVerticalSize(
                                                                              3),
                                                                          width:
                                                                              getHorizontalSize(6))
                                                                    ]))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_plant_dimensions"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12Bluegray80001),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 6),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      BlocSelector<
                                                                              AddPlantTwelveBloc,
                                                                              AddPlantTwelveState,
                                                                              TextEditingController?>(
                                                                          selector: (state) => state
                                                                              .caliperController,
                                                                          builder:
                                                                              (context, caliperController) {
                                                                            return CustomTextFormField(
                                                                                width: getHorizontalSize(123),
                                                                                focusNode: FocusNode(),
                                                                                autofocus: true,
                                                                                controller: caliperController,
                                                                                hintText: "lbl_caliper".tr,
                                                                                variant: TextFormFieldVariant.OutlineGray30001,
                                                                                padding: TextFormFieldPadding.PaddingAll12,
                                                                                fontStyle: TextFormFieldFontStyle.InterRegular12Gray500);
                                                                          }),
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              123),
                                                                          padding: getPadding(
                                                                              left:
                                                                                  14,
                                                                              top:
                                                                                  11,
                                                                              right:
                                                                                  14,
                                                                              bottom:
                                                                                  11),
                                                                          decoration: AppDecoration.txtOutlineGray30001.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .txtCircleBorder6),
                                                                          child: Text(
                                                                              "lbl_height".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterRegular12Gray500)),
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              123),
                                                                          padding: getPadding(
                                                                              left:
                                                                                  14,
                                                                              top:
                                                                                  12,
                                                                              right:
                                                                                  14,
                                                                              bottom:
                                                                                  12),
                                                                          decoration: AppDecoration.txtOutlineGray30001.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .txtCircleBorder6),
                                                                          child: Text(
                                                                              "lbl_pot".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterRegular12Gray500))
                                                                    ]))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_soil_type"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12Bluegray80001),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        380),
                                                                margin:
                                                                    getMargin(
                                                                        top: 5),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            14,
                                                                        top: 18,
                                                                        right:
                                                                            14,
                                                                        bottom:
                                                                            18),
                                                                decoration: AppDecoration
                                                                    .outlineGray30001
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder5),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowdownGray40001,
                                                                          height: getVerticalSize(
                                                                              3),
                                                                          width:
                                                                              getHorizontalSize(6))
                                                                    ]))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 35),
                                                      child: DottedBorder(
                                                          color: ColorConstant
                                                              .gray30001,
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      1),
                                                              top: getVerticalSize(
                                                                  1),
                                                              right: getHorizontalSize(
                                                                  1),
                                                              bottom: getVerticalSize(
                                                                  1)),
                                                          strokeWidth: getHorizontalSize(
                                                              1),
                                                          radius: Radius.circular(
                                                              5),
                                                          borderType:
                                                              BorderType.RRect,
                                                          dashPattern: [2, 2],
                                                          child: Container(
                                                              width: getHorizontalSize(
                                                                  380),
                                                              padding: getPadding(
                                                                  left: 133,
                                                                  top: 19,
                                                                  right: 133,
                                                                  bottom: 19),
                                                              decoration: AppDecoration
                                                                  .outlineGray300011
                                                                  .copyWith(
                                                                      borderRadius: BorderRadiusStyle
                                                                          .roundedBorder5),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgUploadBlueGray400,
                                                                        height: getVerticalSize(
                                                                            20),
                                                                        width: getHorizontalSize(
                                                                            32),
                                                                        margin: getMargin(
                                                                            top:
                                                                                8)),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerRight,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(top: 12),
                                                                            child: Text("msg_upload_your_image".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12Bluegray400)))
                                                                  ]))))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 24, top: 22),
                                      child: Text("lbl_plant_source".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterSemiBold18Teal800))),
                              Padding(
                                  padding:
                                      getPadding(left: 24, top: 20, right: 24),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_source_type".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Bluegray80001),
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                width: getHorizontalSize(380),
                                                margin: getMargin(top: 5),
                                                padding: getPadding(
                                                    left: 14,
                                                    top: 18,
                                                    right: 14,
                                                    bottom: 18),
                                                decoration: AppDecoration
                                                    .outlineGray30001
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdownGray40001,
                                                          height:
                                                              getVerticalSize(
                                                                  3),
                                                          width:
                                                              getHorizontalSize(
                                                                  6))
                                                    ])))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 24, top: 13, right: 24),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_collect_date".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Bluegray80001),
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                width: getHorizontalSize(380),
                                                margin: getMargin(top: 6),
                                                padding: getPadding(
                                                    left: 14,
                                                    top: 10,
                                                    right: 14,
                                                    bottom: 10),
                                                decoration: AppDecoration
                                                    .outlineGray30001
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCalendar,
                                                          height:
                                                              getVerticalSize(
                                                                  18),
                                                          width:
                                                              getHorizontalSize(
                                                                  16),
                                                          margin:
                                                              getMargin(top: 1))
                                                    ])))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 24, top: 14, right: 24),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_source_region".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Bluegray80001),
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                width: getHorizontalSize(380),
                                                margin: getMargin(top: 5),
                                                padding: getPadding(
                                                    left: 14,
                                                    top: 18,
                                                    right: 14,
                                                    bottom: 18),
                                                decoration: AppDecoration
                                                    .outlineGray30001
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdownGray40001,
                                                          height:
                                                              getVerticalSize(
                                                                  3),
                                                          width:
                                                              getHorizontalSize(
                                                                  6))
                                                    ])))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 24, top: 13, right: 24),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_source_vendor".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Bluegray80001),
                                        BlocSelector<
                                                AddPlantTwelveBloc,
                                                AddPlantTwelveState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.frame245oneController,
                                            builder: (context,
                                                frame245oneController) {
                                              return CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller:
                                                      frame245oneController,
                                                  margin: getMargin(top: 6),
                                                  variant: TextFormFieldVariant
                                                      .OutlineGray30001,
                                                  textInputAction:
                                                      TextInputAction.done);
                                            })
                                      ]))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(45),
                text: "lbl_next".tr,
                margin: getMargin(left: 24, right: 24, bottom: 46))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
