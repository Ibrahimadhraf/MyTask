import '../add_plant_seven_screen/widgets/listframe6_item_widget.dart';
import '../add_plant_seven_screen/widgets/listvector14_item_widget.dart';
import 'bloc/add_plant_seven_bloc.dart';
import 'models/add_plant_seven_model.dart';
import 'models/listframe6_item_model.dart';
import 'models/listvector14_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_checkbox.dart';
import 'package:ebrahim_s_application1/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class AddPlantSevenScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AddPlantSevenBloc>(
        create: (context) => AddPlantSevenBloc(
            AddPlantSevenState(addPlantSevenModelObj: AddPlantSevenModel()))
          ..add(AddPlantSevenInitialEvent()),
        child: AddPlantSevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray50,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 147, top: 11, right: 147, bottom: 11),
                              decoration: AppDecoration.fillTeal800,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(21),
                                        width: getHorizontalSize(133),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.teal900,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(10))))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 24, top: 25, right: 24, bottom: 25),
                          decoration: AppDecoration.fillTeal800,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getVerticalSize(17),
                                    width: getHorizontalSize(22),
                                    margin: getMargin(top: 3, bottom: 3),
                                    onTap: () {
                                      onTapImgArrowleft(context);
                                    }),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_add_plant".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold18)),
                                Container(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(27),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal800))
                              ])),
                      CustomImageView(
                          svgPath:
                              ImageConstant.imgGroup1000000870BlueGray10002,
                          height: getVerticalSize(5),
                          width: getHorizontalSize(380),
                          alignment: Alignment.center,
                          margin: getMargin(top: 28)),
                      Padding(
                          padding: getPadding(left: 24, top: 12, right: 65),
                          child: Row(children: [
                            BlocSelector<AddPlantSevenBloc, AddPlantSevenState,
                                    bool?>(
                                selector: (state) => state.isCheckbox,
                                builder: (context, isCheckbox) {
                                  return CustomCheckbox(
                                      text: "msg_plant_information".tr,
                                      value: isCheckbox,
                                      fontStyle:
                                          CheckboxFontStyle.InterMedium11,
                                      onChange: (value) {
                                        context.read<AddPlantSevenBloc>().add(
                                            ChangeCheckBoxEvent(value: value));
                                      });
                                }),
                            CustomImageView(
                                svgPath: ImageConstant.imgEye,
                                height: getSize(16),
                                width: getSize(16),
                                margin: getMargin(left: 15)),
                            Padding(
                                padding: getPadding(left: 8, top: 1),
                                child: Text("lbl_plant_care".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium11)),
                            Spacer(),
                            BlocSelector<AddPlantSevenBloc, AddPlantSevenState,
                                    String?>(
                                selector: (state) => state.radioGroup,
                                builder: (context, radioGroup) {
                                  return CustomRadioButton(
                                      text: "lbl_movement".tr,
                                      value: "lbl_movement".tr ?? "",
                                      groupValue: radioGroup,
                                      fontStyle: RadioFontStyle.InterMedium11,
                                      onChange: (value) {
                                        context.read<AddPlantSevenBloc>().add(
                                            ChangeRadioButtonEvent(
                                                value: value));
                                      });
                                })
                          ])),
                      Container(
                          height: getVerticalSize(728),
                          width: double.maxFinite,
                          margin: getMargin(top: 19),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(
                                        left: 24, top: 10, right: 24),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(left: 4),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVectorTeal800,
                                                        height:
                                                            getVerticalSize(8),
                                                        width:
                                                            getHorizontalSize(
                                                                4),
                                                        margin: getMargin(
                                                            top: 7, bottom: 6)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 13),
                                                        child: Text(
                                                            "lbl_fertilization"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold18Teal800)),
                                                    Spacer(),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgPlus,
                                                        height: getSize(12),
                                                        width: getSize(12),
                                                        margin: getMargin(
                                                            top: 6, bottom: 3)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 7, top: 2),
                                                        child: Text(
                                                            "lbl_new".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular16Teal800))
                                                  ])),
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(top: 15),
                                                  child: BlocSelector<
                                                          AddPlantSevenBloc,
                                                          AddPlantSevenState,
                                                          AddPlantSevenModel?>(
                                                      selector: (state) => state
                                                          .addPlantSevenModelObj,
                                                      builder: (context,
                                                          addPlantSevenModelObj) {
                                                        return ListView
                                                            .separated(
                                                                physics:
                                                                    BouncingScrollPhysics(),
                                                                shrinkWrap:
                                                                    true,
                                                                separatorBuilder:
                                                                    (context,
                                                                        index) {
                                                                  return SizedBox(
                                                                      height:
                                                                          getVerticalSize(
                                                                              12));
                                                                },
                                                                itemCount: addPlantSevenModelObj
                                                                        ?.listframe6ItemList
                                                                        .length ??
                                                                    0,
                                                                itemBuilder:
                                                                    (context,
                                                                        index) {
                                                                  Listframe6ItemModel
                                                                      model =
                                                                      addPlantSevenModelObj
                                                                              ?.listframe6ItemList[index] ??
                                                                          Listframe6ItemModel();
                                                                  return Listframe6ItemWidget(
                                                                      model);
                                                                });
                                                      }))),
                                          Padding(
                                              padding:
                                                  getPadding(left: 4, top: 37),
                                              child: BlocSelector<
                                                      AddPlantSevenBloc,
                                                      AddPlantSevenState,
                                                      AddPlantSevenModel?>(
                                                  selector: (state) => state
                                                      .addPlantSevenModelObj,
                                                  builder: (context,
                                                      addPlantSevenModelObj) {
                                                    return ListView.separated(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      27));
                                                        },
                                                        itemCount:
                                                            addPlantSevenModelObj
                                                                    ?.listvector14ItemList
                                                                    .length ??
                                                                0,
                                                        itemBuilder:
                                                            (context, index) {
                                                          Listvector14ItemModel
                                                              model =
                                                              addPlantSevenModelObj
                                                                          ?.listvector14ItemList[
                                                                      index] ??
                                                                  Listvector14ItemModel();
                                                          return Listvector14ItemWidget(
                                                              model);
                                                        });
                                                  })),
                                          Padding(
                                              padding: getPadding(top: 74),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                        child: Container(
                                                            margin: getMargin(
                                                                right: 14),
                                                            padding: getPadding(
                                                                left: 73,
                                                                top: 14,
                                                                right: 73,
                                                                bottom: 14),
                                                            decoration: AppDecoration
                                                                .fillBluegray80001
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder5),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_back"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterBold12)
                                                                ]))),
                                                    Expanded(
                                                        child: Container(
                                                            margin: getMargin(
                                                                left: 14),
                                                            padding: getPadding(
                                                                left: 74,
                                                                top: 14,
                                                                right: 74,
                                                                bottom: 14),
                                                            decoration: AppDecoration
                                                                .fillOrange200
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder5),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_next"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterBold12Bluegray900)
                                                                ])))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(
                                        left: 23,
                                        top: 30,
                                        right: 23,
                                        bottom: 30),
                                    decoration: AppDecoration.outlineBlack90019
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL30),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_health_issues".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterSemiBold18Teal800),
                                          Padding(
                                              padding: getPadding(top: 19),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_date2".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular12Bluegray80001),
                                                    Container(
                                                        width: double.maxFinite,
                                                        child: Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    380),
                                                            margin: getMargin(
                                                                top: 6),
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
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCalendar,
                                                                      height:
                                                                          getVerticalSize(
                                                                              18),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              16),
                                                                      margin: getMargin(
                                                                          top:
                                                                              1))
                                                                ])))
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 13),
                                              child: Text("lbl_fatalities".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12Bluegray80001)),
                                          Container(
                                              margin: getMargin(top: 6),
                                              padding: getPadding(
                                                  left: 15,
                                                  top: 11,
                                                  right: 15,
                                                  bottom: 11),
                                              decoration: AppDecoration
                                                  .outlineGray30001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder5),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgEye,
                                                    height: getSize(16),
                                                    width: getSize(16),
                                                    margin: getMargin(top: 1)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 8, top: 2),
                                                    child: Text("lbl_yes".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium11)),
                                                Spacer(flex: 32),
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: BlocSelector<
                                                            AddPlantSevenBloc,
                                                            AddPlantSevenState,
                                                            String?>(
                                                        selector: (state) =>
                                                            state.radioGroup1,
                                                        builder: (context,
                                                            radioGroup1) {
                                                          return CustomRadioButton(
                                                              text: "lbl_no".tr,
                                                              value:
                                                                  "lbl_no".tr ??
                                                                      "",
                                                              groupValue:
                                                                  radioGroup1,
                                                              margin: getMargin(
                                                                  top: 1),
                                                              fontStyle:
                                                                  RadioFontStyle
                                                                      .InterMedium11,
                                                              onChange:
                                                                  (value) {
                                                                context
                                                                    .read<
                                                                        AddPlantSevenBloc>()
                                                                    .add(ChangeRadioButton1Event(
                                                                        value:
                                                                            value));
                                                              });
                                                        })),
                                                Spacer(flex: 67)
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 13),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_notes".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular12Bluegray80001),
                                                    Container(
                                                        height:
                                                            getVerticalSize(84),
                                                        width:
                                                            getHorizontalSize(
                                                                380),
                                                        margin:
                                                            getMargin(top: 6),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .whiteA700,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            5)),
                                                            border: Border.all(
                                                                color: ColorConstant
                                                                    .gray30001,
                                                                width:
                                                                    getHorizontalSize(
                                                                        1))))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  top: 306, bottom: 20),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                        child: CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    45),
                                                            text:
                                                                "lbl_cancel".tr,
                                                            margin: getMargin(
                                                                right: 14),
                                                            variant: ButtonVariant
                                                                .FillBluegray40033,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .InterBold12Bluegray80001)),
                                                    Expanded(
                                                        child: CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    45),
                                                            text: "lbl_add".tr,
                                                            margin: getMargin(
                                                                left: 14)))
                                                  ]))
                                        ])))
                          ]))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}