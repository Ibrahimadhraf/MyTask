import '../add_plant_two_screen/widgets/listdate1_item_widget.dart';
import '../add_plant_two_screen/widgets/listvector5_item_widget.dart';
import '../add_plant_two_screen/widgets/listvector6_item_widget.dart';
import 'bloc/add_plant_two_bloc.dart';
import 'models/add_plant_two_model.dart';
import 'models/listdate1_item_model.dart';
import 'models/listvector5_item_model.dart';
import 'models/listvector6_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_checkbox.dart';
import 'package:ebrahim_s_application1/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class AddPlantTwoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AddPlantTwoBloc>(
        create: (context) => AddPlantTwoBloc(
            AddPlantTwoState(addPlantTwoModelObj: AddPlantTwoModel()))
          ..add(AddPlantTwoInitialEvent()),
        child: AddPlantTwoScreen());
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
                                BlocSelector<AddPlantTwoBloc, AddPlantTwoState,
                                        bool?>(
                                    selector: (state) => state.isCheckbox,
                                    builder: (context, isCheckbox) {
                                      return CustomCheckbox(
                                          text: "msg_plant_information".tr,
                                          value: isCheckbox,
                                          fontStyle:
                                              CheckboxFontStyle.InterMedium11,
                                          onChange: (value) {
                                            context.read<AddPlantTwoBloc>().add(
                                                ChangeCheckBoxEvent(
                                                    value: value));
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
                                BlocSelector<AddPlantTwoBloc, AddPlantTwoState,
                                        String?>(
                                    selector: (state) => state.radioGroup,
                                    builder: (context, radioGroup) {
                                      return CustomRadioButton(
                                          text: "lbl_movement".tr,
                                          value: "lbl_movement".tr ?? "",
                                          groupValue: radioGroup,
                                          fontStyle:
                                              RadioFontStyle.InterMedium11,
                                          onChange: (value) {
                                            context.read<AddPlantTwoBloc>().add(
                                                ChangeRadioButtonEvent(
                                                    value: value));
                                          });
                                    })
                              ]))),
                      Padding(
                          padding: getPadding(left: 26, top: 29, right: 24),
                          child: BlocSelector<AddPlantTwoBloc, AddPlantTwoState,
                                  AddPlantTwoModel?>(
                              selector: (state) => state.addPlantTwoModelObj,
                              builder: (context, addPlantTwoModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(25));
                                    },
                                    itemCount: addPlantTwoModelObj
                                            ?.listvector5ItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      Listvector5ItemModel model =
                                          addPlantTwoModelObj
                                                      ?.listvector5ItemList[
                                                  index] ??
                                              Listvector5ItemModel();
                                      return Listvector5ItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(left: 24, top: 17, right: 24),
                          child: BlocSelector<AddPlantTwoBloc, AddPlantTwoState,
                                  AddPlantTwoModel?>(
                              selector: (state) => state.addPlantTwoModelObj,
                              builder: (context, addPlantTwoModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(12));
                                    },
                                    itemCount: addPlantTwoModelObj
                                            ?.listdate1ItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      Listdate1ItemModel model =
                                          addPlantTwoModelObj
                                                  ?.listdate1ItemList[index] ??
                                              Listdate1ItemModel();
                                      return Listdate1ItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(left: 28, top: 43, right: 24),
                          child: BlocSelector<AddPlantTwoBloc, AddPlantTwoState,
                                  AddPlantTwoModel?>(
                              selector: (state) => state.addPlantTwoModelObj,
                              builder: (context, addPlantTwoModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(23));
                                    },
                                    itemCount: addPlantTwoModelObj
                                            ?.listvector6ItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      Listvector6ItemModel model =
                                          addPlantTwoModelObj
                                                      ?.listvector6ItemList[
                                                  index] ??
                                              Listvector6ItemModel();
                                      return Listvector6ItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(
                              left: 24, top: 50, right: 24, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(45),
                                        text: "lbl_back".tr,
                                        margin: getMargin(right: 14),
                                        variant:
                                            ButtonVariant.FillBluegray80001,
                                        fontStyle: ButtonFontStyle
                                            .InterBold12WhiteA700)),
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(45),
                                        text: "lbl_next".tr,
                                        margin: getMargin(left: 14)))
                              ]))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
