import '../home_page/widgets/listlightbulb_item_widget.dart';
import '../home_page/widgets/listrectanglefi_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/listlightbulb_item_model.dart';
import 'models/listrectanglefi_item_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray50,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBluegray50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      bottom: 5,
                    ),
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
                              bottom: 11,
                            ),
                            decoration: AppDecoration.fillTeal800,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    21,
                                  ),
                                  width: getHorizontalSize(
                                    133,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.teal900,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                left: 24,
                                top: 15,
                                right: 24,
                                bottom: 15,
                              ),
                              decoration: AppDecoration.outlineTeal700,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgNotification,
                                    height: getVerticalSize(
                                      21,
                                    ),
                                    width: getHorizontalSize(
                                      17,
                                    ),
                                    margin: getMargin(
                                      top: 8,
                                      bottom: 11,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgSearch,
                                    height: getSize(
                                      18,
                                    ),
                                    width: getSize(
                                      18,
                                    ),
                                    margin: getMargin(
                                      left: 23,
                                      top: 10,
                                      bottom: 12,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 46,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      bottom: 8,
                                    ),
                                    child: Text(
                                      "lbl_home".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold18,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 53,
                                  ),
                                  CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    variant: IconButtonVariant.FillTeal70001,
                                    shape: IconButtonShape.CircleBorder21,
                                    padding: IconButtonPadding.PaddingAll12,
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgCart,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                left: 21,
                                top: 7,
                                right: 21,
                                bottom: 7,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgWelcomeweather,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 15,
                                      bottom: 17,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_good_day".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtInterRegular16Gray200,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 1,
                                          ),
                                          child: Text(
                                            "lbl_yasser_alharby".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterBold16WhiteA700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      bottom: 8,
                                    ),
                                    padding: getPadding(
                                      left: 7,
                                      top: 4,
                                      right: 7,
                                      bottom: 4,
                                    ),
                                    decoration:
                                        AppDecoration.fillTeal70002.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 2,
                                            top: 3,
                                          ),
                                          child: Row(
                                            children: [
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation,
                                                height: getVerticalSize(
                                                  11,
                                                ),
                                                width: getHorizontalSize(
                                                  8,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 5,
                                                  top: 1,
                                                ),
                                                child: Text(
                                                  "msg_riyadh_saudi_arabia".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtInterBold8,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 7,
                                          ),
                                          child: SizedBox(
                                            width: getHorizontalSize(
                                              117,
                                            ),
                                            child: Divider(
                                              height: getVerticalSize(
                                                1,
                                              ),
                                              thickness: getVerticalSize(
                                                1,
                                              ),
                                              color: ColorConstant.teal800,
                                              indent: getHorizontalSize(
                                                2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 6,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: getVerticalSize(
                                                  27,
                                                ),
                                                width: getHorizontalSize(
                                                  32,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        "lbl_38".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold22,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      svgPath:
                                                          ImageConstant.img,
                                                      height: getSize(
                                                        4,
                                                      ),
                                                      width: getSize(
                                                        4,
                                                      ),
                                                      alignment:
                                                          Alignment.topRight,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 2,
                                                  top: 6,
                                                  bottom: 3,
                                                ),
                                                child: Text(
                                                  "lbl".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterBold14,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 5,
                                                  top: 6,
                                                  bottom: 1,
                                                ),
                                                child: Text(
                                                  "lbl_22".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterBold15,
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath: ImageConstant.img,
                                                height: getSize(
                                                  4,
                                                ),
                                                width: getSize(
                                                  4,
                                                ),
                                                margin: getMargin(
                                                  top: 7,
                                                  bottom: 15,
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgBrightness,
                                                height: getSize(
                                                  21,
                                                ),
                                                width: getSize(
                                                  21,
                                                ),
                                                margin: getMargin(
                                                  left: 21,
                                                  top: 1,
                                                  bottom: 4,
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
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            left: 22,
                            top: 16,
                            right: 22,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: getPadding(
                                  left: 11,
                                  top: 14,
                                  right: 11,
                                  bottom: 14,
                                ),
                                decoration:
                                    AppDecoration.outlineGray90019.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
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
                                      style: AppStyle
                                          .txtInterRegular12Bluegray40001,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 10,
                                      ),
                                      child: Text(
                                        "lbl_3000_m".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterRegular16GreenA700,
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
                                width: getHorizontalSize(
                                  252,
                                ),
                                margin: getMargin(
                                  left: 11,
                                  bottom: 2,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: getPadding(
                                        left: 13,
                                        top: 14,
                                        right: 13,
                                        bottom: 14,
                                      ),
                                      decoration: AppDecoration.outlineGray90019
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_total_plants".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Bluegray40001,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 12,
                                            ),
                                            child: Text(
                                              "lbl_70_000".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular16RedA200,
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgVector12,
                                            height: getVerticalSize(
                                              26,
                                            ),
                                            width: getHorizontalSize(
                                              88,
                                            ),
                                            margin: getMargin(
                                              left: 4,
                                              top: 16,
                                              bottom: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 11,
                                      ),
                                      padding: getPadding(
                                        left: 13,
                                        top: 14,
                                        right: 13,
                                        bottom: 14,
                                      ),
                                      decoration: AppDecoration.outlineGray90019
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_fertilizers".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular12Bluegray40001,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 10,
                                            ),
                                            child: Text(
                                              "lbl_1500_k".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular16Yellow800,
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgCar,
                                            height: getVerticalSize(
                                              26,
                                            ),
                                            width: getHorizontalSize(
                                              88,
                                            ),
                                            margin: getMargin(
                                              left: 4,
                                              top: 17,
                                              bottom: 1,
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
                        Padding(
                          padding: getPadding(
                            left: 22,
                            top: 15,
                            right: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_plants".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold16,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 4,
                                ),
                                child: Text(
                                  "lbl_more".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12Yellow800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getVerticalSize(
                              157,
                            ),
                            child:
                                BlocSelector<HomeBloc, HomeState, HomeModel?>(
                              selector: (state) => state.homeModelObj,
                              builder: (context, homeModelObj) {
                                return ListView.separated(
                                  padding: getPadding(
                                    left: 22,
                                    top: 11,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (
                                    context,
                                    index,
                                  ) {
                                    return SizedBox(
                                      height: getVerticalSize(
                                        12,
                                      ),
                                    );
                                  },
                                  itemCount: homeModelObj
                                          ?.listrectanglefiItemList.length ??
                                      0,
                                  itemBuilder: (context, index) {
                                    ListrectanglefiItemModel model =
                                        homeModelObj?.listrectanglefiItemList[
                                                index] ??
                                            ListrectanglefiItemModel();
                                    return ListrectanglefiItemWidget(
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
                            left: 22,
                            top: 30,
                            right: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_wishlist".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold16,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Text(
                                  "lbl_more".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12Yellow800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getVerticalSize(
                              157,
                            ),
                            child:
                                BlocSelector<HomeBloc, HomeState, HomeModel?>(
                              selector: (state) => state.homeModelObj,
                              builder: (context, homeModelObj) {
                                return ListView.separated(
                                  padding: getPadding(
                                    left: 22,
                                    top: 11,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (
                                    context,
                                    index,
                                  ) {
                                    return SizedBox(
                                      height: getVerticalSize(
                                        12,
                                      ),
                                    );
                                  },
                                  itemCount: homeModelObj
                                          ?.listlightbulbItemList.length ??
                                      0,
                                  itemBuilder: (context, index) {
                                    ListlightbulbItemModel model = homeModelObj
                                            ?.listlightbulbItemList[index] ??
                                        ListlightbulbItemModel();
                                    return ListlightbulbItemWidget(
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
                            175,
                          ),
                          width: getHorizontalSize(
                            388,
                          ),
                          margin: getMargin(
                            top: 32,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  margin: getMargin(
                                    left: 104,
                                    top: 48,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.teal80056,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 4,
                                      ),
                                      child: Text(
                                        "msg_plant_of_the_day".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold16,
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        top: 9,
                                      ),
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 3,
                                      ),
                                      decoration:
                                          AppDecoration.fillWhiteA700.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle59140x130,
                                            height: getVerticalSize(
                                              140,
                                            ),
                                            width: getHorizontalSize(
                                              130,
                                            ),
                                            radius: BorderRadius.circular(
                                              getHorizontalSize(
                                                10,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 7,
                                              bottom: 9,
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
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 1,
                                                        bottom: 5,
                                                      ),
                                                      child: Text(
                                                        "lbl_wildflower".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold14,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: getHorizontalSize(
                                                        42,
                                                      ),
                                                      margin: getMargin(
                                                        left: 5,
                                                        top: 2,
                                                        bottom: 8,
                                                      ),
                                                      padding: getPadding(
                                                        left: 5,
                                                        top: 1,
                                                        right: 5,
                                                        bottom: 1,
                                                      ),
                                                      decoration: AppDecoration
                                                          .txtFillYellow80033
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtCircleBorder6,
                                                      ),
                                                      child: Text(
                                                        "lbl_wf0123".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular8Bluegray80001,
                                                      ),
                                                    ),
                                                    CustomIconButton(
                                                      height: 24,
                                                      width: 24,
                                                      margin: getMargin(
                                                        left: 88,
                                                      ),
                                                      variant: IconButtonVariant
                                                          .FillBluegray10099,
                                                      child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgShare,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmarkBlueGray80001,
                                                        height: getSize(
                                                          9,
                                                        ),
                                                        width: getSize(
                                                          9,
                                                        ),
                                                        margin: getMargin(
                                                          top: 1,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 5,
                                                        ),
                                                        child: Text(
                                                          "lbl_shrub".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular8,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMailBlueGray400,
                                                        height: getVerticalSize(
                                                          9,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          10,
                                                        ),
                                                        margin: getMargin(
                                                          left: 4,
                                                          top: 1,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 4,
                                                        ),
                                                        child: Text(
                                                          "lbl_sand".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular8,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgClock,
                                                        height: getVerticalSize(
                                                          9,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          7,
                                                        ),
                                                        margin: getMargin(
                                                          left: 10,
                                                          bottom: 1,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 4,
                                                        ),
                                                        child: Text(
                                                          "lbl_12cmx1mx12l".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular8,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: getHorizontalSize(
                                                    227,
                                                  ),
                                                  margin: getMargin(
                                                    left: 1,
                                                    top: 13,
                                                  ),
                                                  child: Text(
                                                    "msg_wildflower_the".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular10Gray600,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
