import '../plant_of_the_day_screen/widgets/plant_of_the_item_widget.dart';
import 'bloc/plant_of_the_day_bloc.dart';
import 'models/plant_of_the_day_model.dart';
import 'models/plant_of_the_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_checkbox.dart';
import 'package:ebrahim_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PlantOfTheDayScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PlantOfTheDayBloc>(
        create: (context) => PlantOfTheDayBloc(
            PlantOfTheDayState(plantOfTheDayModelObj: PlantOfTheDayModel()))
          ..add(PlantOfTheDayInitialEvent()),
        child: PlantOfTheDayScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray5001,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(576),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    width: double.maxFinite,
                                    margin: getMargin(bottom: 307),
                                    padding: getPadding(top: 28, bottom: 28),
                                    decoration: AppDecoration
                                        .gradientBlack900b2Black90019,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 158),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_wildflower"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterSemiBold18)),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  20),
                                                          width:
                                                              getHorizontalSize(
                                                                  45),
                                                          text: "lbl_wf0123".tr,
                                                          margin: getMargin(
                                                              left: 11, top: 3),
                                                          variant: ButtonVariant
                                                              .FillYellow800,
                                                          shape: ButtonShape
                                                              .RoundedBorder8,
                                                          padding: ButtonPadding
                                                              .PaddingAll3,
                                                          fontStyle:
                                                              ButtonFontStyle
                                                                  .InterSemiBold8)
                                                    ]),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 1, top: 12),
                                                        child: Row(children: [
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCheckmarkGray30002,
                                                              height:
                                                                  getVerticalSize(
                                                                      12),
                                                              width:
                                                                  getHorizontalSize(
                                                                      13),
                                                              margin: getMargin(
                                                                  top: 2,
                                                                  bottom: 2)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 5),
                                                              child: Text(
                                                                  "lbl_tree".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular14Gray400)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgMail,
                                                              height:
                                                                  getVerticalSize(
                                                                      12),
                                                              width:
                                                                  getHorizontalSize(
                                                                      15),
                                                              margin: getMargin(
                                                                  left: 19,
                                                                  top: 2,
                                                                  bottom: 2)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 6),
                                                              child: Text(
                                                                  "lbl_sand".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular14Bluegray100)),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgEyeGray30002,
                                                              height:
                                                                  getSize(12),
                                                              width:
                                                                  getSize(12),
                                                              margin: getMargin(
                                                                  left: 22,
                                                                  top: 2,
                                                                  bottom: 2)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 5),
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
                                                                      .txtInterRegular14Bluegray10001))
                                                        ]))
                                                  ])),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgQrcode,
                                              height: getSize(65),
                                              width: getSize(65),
                                              margin: getMargin(
                                                  top: 144, bottom: 2))
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle58269x428,
                                height: getVerticalSize(269),
                                width: getHorizontalSize(428),
                                alignment: Alignment.topCenter),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    width: double.maxFinite,
                                    margin: getMargin(bottom: 306),
                                    padding: getPadding(
                                        left: 25,
                                        top: 32,
                                        right: 25,
                                        bottom: 32),
                                    decoration: AppDecoration
                                        .gradientBlack900b2Black90019,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              height: getVerticalSize(17),
                                              width: getHorizontalSize(22),
                                              margin: getMargin(
                                                  left: 7, top: 6, bottom: 182),
                                              onTap: () {
                                                onTapImgArrowleft(context);
                                              }),
                                          CustomIconButton(
                                              height: 30,
                                              width: 30,
                                              margin: getMargin(bottom: 176),
                                              variant: IconButtonVariant
                                                  .FillWhiteA70033,
                                              shape: IconButtonShape
                                                  .CircleBorder15,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgShareWhiteA700))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(left: 32, bottom: 250),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Text("lbl_wildflower".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold14),
                                            Container(
                                                margin: getMargin(
                                                    left: 5, bottom: 2),
                                                padding: getPadding(
                                                    left: 5,
                                                    top: 1,
                                                    right: 5,
                                                    bottom: 1),
                                                decoration: AppDecoration
                                                    .fillYellow80033
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl_wf0123".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular8Bluegray80001)
                                                    ]))
                                          ]),
                                          Padding(
                                              padding: getPadding(top: 6),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmarkBlueGray80001,
                                                    height: getSize(9),
                                                    width: getSize(9),
                                                    margin: getMargin(top: 1)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 5),
                                                    child: Text("lbl_shrub".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular8)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgMailBlueGray400,
                                                    height: getVerticalSize(9),
                                                    width:
                                                        getHorizontalSize(10),
                                                    margin: getMargin(
                                                        left: 4, top: 1)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text("lbl_sand".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular8)),
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgClock,
                                                    height: getVerticalSize(9),
                                                    width: getHorizontalSize(7),
                                                    margin: getMargin(
                                                        left: 10, bottom: 1)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text(
                                                        "lbl_12cmx1mx12l".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular8))
                                              ]))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    margin: getMargin(bottom: 73),
                                    padding: getPadding(
                                        left: 30,
                                        top: 26,
                                        right: 30,
                                        bottom: 26),
                                    decoration: AppDecoration.fillBluegray5001,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(children: [
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("lbl_wildflower".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold18Teal800)),
                                            CustomButton(
                                                height: getVerticalSize(20),
                                                width: getHorizontalSize(45),
                                                text: "lbl_wf0123".tr,
                                                margin:
                                                    getMargin(left: 11, top: 3),
                                                variant:
                                                    ButtonVariant.FillYellow800,
                                                shape:
                                                    ButtonShape.RoundedBorder8,
                                                padding:
                                                    ButtonPadding.PaddingAll3,
                                                fontStyle: ButtonFontStyle
                                                    .InterSemiBold8)
                                          ]),
                                          Padding(
                                              padding:
                                                  getPadding(left: 1, top: 12),
                                              child: Row(children: [
                                                BlocSelector<
                                                        PlantOfTheDayBloc,
                                                        PlantOfTheDayState,
                                                        bool?>(
                                                    selector: (state) =>
                                                        state.isCheckbox,
                                                    builder:
                                                        (context, isCheckbox) {
                                                      return CustomCheckbox(
                                                          text: "lbl_tree".tr,
                                                          iconSize:
                                                              getHorizontalSize(
                                                                  13),
                                                          value: isCheckbox,
                                                          fontStyle:
                                                              CheckboxFontStyle
                                                                  .InterRegular14,
                                                          onChange: (value) {
                                                            context
                                                                .read<
                                                                    PlantOfTheDayBloc>()
                                                                .add(ChangeCheckBoxEvent(
                                                                    value:
                                                                        value));
                                                          });
                                                    }),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgMailBlueGray400,
                                                    height: getVerticalSize(12),
                                                    width:
                                                        getHorizontalSize(15),
                                                    margin: getMargin(
                                                        left: 19,
                                                        top: 2,
                                                        bottom: 2)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 6),
                                                    child: Text("lbl_sand".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular14Bluegray400)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgClockBlueGray400,
                                                    height: getSize(12),
                                                    width: getSize(12),
                                                    margin: getMargin(
                                                        left: 22,
                                                        top: 2,
                                                        bottom: 2)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 5),
                                                    child: Text(
                                                        "lbl_12cmx1mx12l".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular14Bluegray400))
                                              ])),
                                          Container(
                                              width: getHorizontalSize(356),
                                              margin:
                                                  getMargin(top: 21, right: 10),
                                              child: Text(
                                                  "msg_wildflower_the".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular14Gray600)),
                                          Padding(
                                              padding: getPadding(
                                                  top: 26, bottom: 1),
                                              child: Text(
                                                  "msg_where_to_find_this".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold16))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    width: getHorizontalSize(356),
                                    child: Text("msg_wildflower_the".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterRegular14Gray600)))
                          ])),
                      Padding(
                          padding: getPadding(left: 30, top: 24),
                          child: Text("lbl_recent_plants".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(159),
                              child: BlocSelector<PlantOfTheDayBloc,
                                      PlantOfTheDayState, PlantOfTheDayModel?>(
                                  selector: (state) =>
                                      state.plantOfTheDayModelObj,
                                  builder: (context, plantOfTheDayModelObj) {
                                    return ListView.separated(
                                        padding: getPadding(left: 25, top: 13),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(8));
                                        },
                                        itemCount: plantOfTheDayModelObj
                                                ?.plantOfTheItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          PlantOfTheItemModel model =
                                              plantOfTheDayModelObj
                                                          ?.plantOfTheItemList[
                                                      index] ??
                                                  PlantOfTheItemModel();
                                          return PlantOfTheItemWidget(model);
                                        });
                                  }))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(
                                  left: 25, top: 46, right: 22, bottom: 5),
                              padding: getPadding(
                                  left: 125, top: 13, right: 125, bottom: 13),
                              decoration: AppDecoration.fillOrange20090
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgRefreshBlueGray8000117x15,
                                        height: getVerticalSize(17),
                                        width: getHorizontalSize(15)),
                                    Padding(
                                        padding: getPadding(
                                            left: 10, top: 1, right: 13),
                                        child: Text("lbl_explore_more".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterBold14Bluegray80001))
                                  ])))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
