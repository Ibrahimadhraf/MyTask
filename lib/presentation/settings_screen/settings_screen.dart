import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/home_page/home_page.dart';
import 'package:ebrahim_s_application1/presentation/settings_one_page/settings_one_page.dart';
import 'package:ebrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ebrahim_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray50,
            resizeToAvoidBottomInset: false,
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
                              left: 24, top: 23, right: 24, bottom: 23),
                          decoration: AppDecoration.fillTeal800,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getVerticalSize(17),
                                    width: getHorizontalSize(22),
                                    margin: getMargin(top: 4, bottom: 4),
                                    onTap: () {
                                      onTapImgArrowleft(context);
                                    }),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("lbl_language".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold18)),
                                Container(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(27),
                                    margin: getMargin(top: 1, bottom: 1),
                                    padding: getPadding(left: 2, right: 2),
                                    decoration: AppDecoration.fillTeal800,
                                    child: Stack(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgSearch,
                                          height: getSize(18),
                                          width: getSize(18),
                                          alignment: Alignment.bottomRight)
                                    ]))
                              ])),
                      Container(
                          margin: getMargin(left: 24, top: 32, right: 24),
                          padding: getPadding(all: 18),
                          decoration: AppDecoration.outlineBluegray40033
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(left: 11, top: 3),
                                    child: Text("lbl_english".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular16Bluegray80001)),
                                Container(
                                    margin: getMargin(top: 1, bottom: 1),
                                    padding: getPadding(all: 2),
                                    decoration: AppDecoration.outlineTeal70003
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(16),
                                              width: getSize(16),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.teal70003,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              8))))
                                        ]))
                              ])),
                      BlocSelector<SettingsBloc, SettingsState,
                              TextEditingController?>(
                          selector: (state) => state.languageController,
                          builder: (context, languageController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: languageController,
                                hintText: "lbl_arabic".tr,
                                margin: getMargin(left: 24, top: 16, right: 24),
                                shape: TextFormFieldShape.RoundedBorder10,
                                padding: TextFormFieldPadding.PaddingT20,
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 19,
                                        right: 18,
                                        bottom: 20),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgContrastWhiteA700)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60)));
                          }),
                      BlocSelector<SettingsBloc, SettingsState,
                              TextEditingController?>(
                          selector: (state) => state.languageoneController,
                          builder: (context, languageoneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: languageoneController,
                                hintText: "lbl_spanish".tr,
                                margin: getMargin(left: 24, top: 16, right: 24),
                                shape: TextFormFieldShape.RoundedBorder10,
                                padding: TextFormFieldPadding.PaddingT20,
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 19,
                                        right: 18,
                                        bottom: 20),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgContrastWhiteA700)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60)));
                          }),
                      BlocSelector<SettingsBloc, SettingsState,
                              TextEditingController?>(
                          selector: (state) => state.group1000000953Controller,
                          builder: (context, group1000000953Controller) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: group1000000953Controller,
                                hintText: "lbl_persian".tr,
                                margin: getMargin(
                                    left: 24, top: 16, right: 24, bottom: 5),
                                shape: TextFormFieldShape.RoundedBorder10,
                                padding: TextFormFieldPadding.PaddingT20,
                                textInputAction: TextInputAction.done,
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 19,
                                        right: 18,
                                        bottom: 20),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgContrastWhiteA700)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(60)));
                          })
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
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
