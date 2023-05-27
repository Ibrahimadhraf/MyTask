import '../plant_details_two_screen/widgets/filtercategorie_item_widget.dart';
import '../plant_details_two_screen/widgets/listframe7_item_widget.dart';
import '../plant_details_two_screen/widgets/listtype_item_widget.dart';
import 'bloc/plant_details_two_bloc.dart';
import 'models/filtercategorie_item_model.dart';
import 'models/listframe7_item_model.dart';
import 'models/listtype_item_model.dart';
import 'models/plant_details_two_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/home_page/home_page.dart';
import 'package:ebrahim_s_application1/presentation/settings_one_page/settings_one_page.dart';
import 'package:ebrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_icon_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class PlantDetailsTwoScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PlantDetailsTwoBloc>(
      create: (context) => PlantDetailsTwoBloc(PlantDetailsTwoState(
        plantDetailsTwoModelObj: PlantDetailsTwoModel(),
      ))
        ..add(PlantDetailsTwoInitialEvent()),
      child: PlantDetailsTwoScreen(),
    );
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
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle58,
                        height: getVerticalSize(
                          212,
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
                          style: AppStyle.txtInterMedium14Bluegray400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "lbl_statistics".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium14Bluegray400,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgGroup1000000870,
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
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 24,
                      top: 18,
                      right: 24,
                    ),
                    padding: getPadding(
                      left: 17,
                      top: 14,
                      right: 17,
                      bottom: 14,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: getMargin(
                            top: 7,
                            bottom: 151,
                          ),
                          padding: getPadding(
                            all: 1,
                          ),
                          decoration: AppDecoration.outlineGray40002.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder45,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: getPadding(
                                  left: 23,
                                  top: 17,
                                  right: 23,
                                  bottom: 17,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: fs.Svg(
                                      ImageConstant.imgGroup44,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        right: 1,
                                      ),
                                      child: Text(
                                        "lbl_75".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSourceCodeProRomanBold18,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        39,
                                      ),
                                      margin: getMargin(
                                        top: 3,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "lbl_success_rate2".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style:
                                            AppStyle.txtInterRegular10Black900,
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
                            left: 24,
                            top: 1,
                            right: 5,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "msg_intry_to_the_nursery".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterSemiBold14,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "lbl_date4".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular10Black90090,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 9,
                                      ),
                                      child: Text(
                                        "msg_sat_04_12_3_292".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold12Bluegray80001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 8,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.blueGray5001,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 6,
                                ),
                                child: Text(
                                  "msg_first_entry_form".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold14,
                                ),
                              ),
                              BlocSelector<PlantDetailsTwoBloc,
                                  PlantDetailsTwoState, TextEditingController?>(
                                selector: (state) => state.group152Controller,
                                builder: (context, group152Controller) {
                                  return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: group152Controller,
                                    hintText: "lbl_seed".tr,
                                    margin: getMargin(
                                      top: 1,
                                    ),
                                    variant: TextFormFieldVariant
                                        .UnderLineBluegray5001,
                                    fontStyle:
                                        TextFormFieldFontStyle.InterSemiBold12,
                                    textInputAction: TextInputAction.done,
                                  );
                                },
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Text(
                                  "msg_soil_information".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold14,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 2,
                                  top: 2,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                      ),
                                      child: Text(
                                        "lbl_mix_type".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular10Black90090,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 13,
                                      ),
                                      child: Text(
                                        "lbl_sand".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold12Bluegray80001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.blueGray5001,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Text(
                                  "lbl_source_details".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold14,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 2,
                                  top: 4,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                      ),
                                      child: Text(
                                        "lbl_type3".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular10Black90090,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 48,
                                      ),
                                      child: Text(
                                        "lbl_sand".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold12Bluegray80001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 2,
                                  top: 7,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Text(
                                        "lbl_collect_date2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular10Black90090,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                      ),
                                      child: Text(
                                        "lbl_26_2_2023".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold12Bluegray80001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 2,
                                  top: 8,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "lbl_region".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular10Black90090,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 39,
                                      ),
                                      child: Text(
                                        "lbl_riyadh".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold12Bluegray80001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 2,
                                  top: 6,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "lbl_vendor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular10Black90090,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 38,
                                      ),
                                      child: Text(
                                        "lbl_bostan".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold12Bluegray80001,
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
                ),
                Padding(
                  padding: getPadding(
                    left: 26,
                    top: 24,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowdownTeal800,
                        height: getVerticalSize(
                          4,
                        ),
                        width: getHorizontalSize(
                          8,
                        ),
                        margin: getMargin(
                          top: 9,
                          bottom: 8,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 11,
                        ),
                        child: Text(
                          "lbl_fertilization".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold18Teal800,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 14,
                      right: 24,
                    ),
                    child: BlocSelector<PlantDetailsTwoBloc,
                        PlantDetailsTwoState, PlantDetailsTwoModel?>(
                      selector: (state) => state.plantDetailsTwoModelObj,
                      builder: (context, plantDetailsTwoModelObj) {
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
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
                          itemCount: plantDetailsTwoModelObj
                                  ?.listframe7ItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            Listframe7ItemModel model = plantDetailsTwoModelObj
                                    ?.listframe7ItemList[index] ??
                                Listframe7ItemModel();
                            return Listframe7ItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 26,
                    top: 24,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowdownTeal800,
                        height: getVerticalSize(
                          4,
                        ),
                        width: getHorizontalSize(
                          8,
                        ),
                        margin: getMargin(
                          top: 9,
                          bottom: 8,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 11,
                        ),
                        child: Text(
                          "lbl_maintenance".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold18Teal800,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      48,
                    ),
                    child: BlocSelector<PlantDetailsTwoBloc,
                        PlantDetailsTwoState, PlantDetailsTwoModel?>(
                      selector: (state) => state.plantDetailsTwoModelObj,
                      builder: (context, plantDetailsTwoModelObj) {
                        return ListView.separated(
                          padding: getPadding(
                            left: 26,
                            top: 17,
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
                          itemCount: plantDetailsTwoModelObj
                                  ?.filtercategorieItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            FiltercategorieItemModel model =
                                plantDetailsTwoModelObj
                                        ?.filtercategorieItemList[index] ??
                                    FiltercategorieItemModel();
                            return FiltercategorieItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    497,
                  ),
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 14,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: getPadding(
                            left: 24,
                            right: 24,
                            bottom: 35,
                          ),
                          child: BlocSelector<PlantDetailsTwoBloc,
                              PlantDetailsTwoState, PlantDetailsTwoModel?>(
                            selector: (state) => state.plantDetailsTwoModelObj,
                            builder: (context, plantDetailsTwoModelObj) {
                              return ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
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
                                itemCount: plantDetailsTwoModelObj
                                        ?.listtypeItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  ListtypeItemModel model =
                                      plantDetailsTwoModelObj
                                              ?.listtypeItemList[index] ??
                                          ListtypeItemModel();
                                  return ListtypeItemWidget(
                                    model,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.maxFinite,
                          margin: getMargin(
                            top: 363,
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
