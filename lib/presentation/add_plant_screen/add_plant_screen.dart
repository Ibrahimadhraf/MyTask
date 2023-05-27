import 'bloc/add_plant_bloc.dart';
import 'models/add_plant_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';

class AddPlantScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AddPlantBloc>(
        create: (context) =>
            AddPlantBloc(AddPlantState(addPlantModelObj: AddPlantModel()))
              ..add(AddPlantInitialEvent()),
        child: AddPlantScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray50,
            body: Container(
                width: double.maxFinite,
                child: Column(
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
                          margin: getMargin(top: 28)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 12, right: 65),
                              child: Row(children: [
                                BlocSelector<AddPlantBloc, AddPlantState,
                                        bool?>(
                                    selector: (state) => state.isCheckbox,
                                    builder: (context, isCheckbox) {
                                      return CustomCheckbox(
                                          text: "msg_plant_information".tr,
                                          value: isCheckbox,
                                          fontStyle:
                                              CheckboxFontStyle.InterMedium11,
                                          onChange: (value) {
                                            context.read<AddPlantBloc>().add(
                                                ChangeCheckBoxEvent(
                                                    value: value));
                                          });
                                    }),
                                BlocSelector<AddPlantBloc, AddPlantState,
                                        bool?>(
                                    selector: (state) => state.isCheckbox1,
                                    builder: (context, isCheckbox1) {
                                      return CustomCheckbox(
                                          text: "lbl_plant_care".tr,
                                          value: isCheckbox1,
                                          margin: getMargin(left: 15),
                                          fontStyle:
                                              CheckboxFontStyle.InterMedium11,
                                          onChange: (value) {
                                            context.read<AddPlantBloc>().add(
                                                ChangeCheckBox1Event(
                                                    value: value));
                                          });
                                    }),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgEye,
                                    height: getSize(16),
                                    width: getSize(16)),
                                Padding(
                                    padding: getPadding(left: 8, top: 1),
                                    child: Text("lbl_movement".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterMedium11Teal70004))
                              ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 29),
                              child: Text("lbl_plant_movement".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold18Teal800))),
                      Padding(
                          padding: getPadding(left: 24, top: 20, right: 23),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_dispatch_date".tr,
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
                                            top: 10,
                                            right: 14,
                                            bottom: 10),
                                        decoration: AppDecoration
                                            .outlineGray30001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgCalendar,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(16),
                                                  margin: getMargin(top: 1))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 14, right: 23),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_planting_date".tr,
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
                                            top: 10,
                                            right: 14,
                                            bottom: 10),
                                        decoration: AppDecoration
                                            .outlineGray30001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgCalendar,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(16),
                                                  margin: getMargin(top: 1))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 13, right: 24),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_success_rate".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtInterRegular12Bluegray80001),
                                Container(
                                    width: getHorizontalSize(380),
                                    margin: getMargin(top: 6),
                                    padding: getPadding(
                                        left: 13, top: 8, right: 13, bottom: 8),
                                    decoration: AppDecoration
                                        .txtOutlineGray30001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder6),
                                    child: Text("lbl2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterBold15Gray40001))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 13, right: 24),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_notes".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtInterRegular12Bluegray80001),
                                Container(
                                    height: getVerticalSize(84),
                                    width: getHorizontalSize(380),
                                    margin: getMargin(top: 6),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(5)),
                                        border: Border.all(
                                            color: ColorConstant.gray30001,
                                            width: getHorizontalSize(1))))
                              ])),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 24, right: 24, bottom: 51),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(45),
                                    width: getHorizontalSize(176),
                                    text: "lbl_back".tr,
                                    variant: ButtonVariant.FillBluegray80001,
                                    fontStyle:
                                        ButtonFontStyle.InterBold12WhiteA700),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.orange200,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5),
                                    child: Container(
                                        height: getVerticalSize(45),
                                        width: getHorizontalSize(176),
                                        decoration: AppDecoration.fillOrange200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("lbl_next".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold12Bluegray900)),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 59,
                                                          top: 14,
                                                          right: 59,
                                                          bottom: 14),
                                                      decoration: AppDecoration
                                                          .fillOrange200
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder5),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_add_plant"
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
                                            ])))
                              ]))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
