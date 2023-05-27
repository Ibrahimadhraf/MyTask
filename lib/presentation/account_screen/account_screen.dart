import 'bloc/account_bloc.dart';
import 'models/account_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/home_page/home_page.dart';
import 'package:ebrahim_s_application1/presentation/settings_one_page/settings_one_page.dart';
import 'package:ebrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ebrahim_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AccountScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountBloc>(
        create: (context) =>
            AccountBloc(AccountState(accountModelObj: AccountModel()))
              ..add(AccountInitialEvent()),
        child: AccountScreen());
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
                          height: getVerticalSize(230),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        width: double.maxFinite,
                                        margin: getMargin(bottom: 156),
                                        padding: getPadding(
                                            left: 24,
                                            top: 25,
                                            right: 24,
                                            bottom: 25),
                                        decoration: AppDecoration.fillTeal800,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  height: getVerticalSize(17),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(
                                                      top: 3, bottom: 3),
                                                  onTap: () {
                                                    onTapImgArrowleft(context);
                                                  }),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_account".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold18)),
                                              Container(
                                                  height: getVerticalSize(24),
                                                  width: getHorizontalSize(27),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .teal800))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        width: double.maxFinite,
                                        margin: getMargin(top: 72, bottom: 31),
                                        padding: getPadding(
                                            left: 24,
                                            top: 17,
                                            right: 24,
                                            bottom: 17),
                                        decoration: AppDecoration.fillGray30003,
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(bottom: 33),
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder29),
                                                  child: Container(
                                                      height: getSize(59),
                                                      width: getSize(59),
                                                      padding: getPadding(
                                                          top: 1, bottom: 1),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder29),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgDgdalogoarpng,
                                                            height:
                                                                getVerticalSize(
                                                                    54),
                                                            width:
                                                                getHorizontalSize(
                                                                    57),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 8,
                                                      bottom: 39),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_yasser_alharby"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular16Bluegray80001),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 8),
                                                            child: Text(
                                                                "msg_yalharby_mail_com"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular13
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(1.04))))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: getMargin(
                                            left: 24, top: 170, right: 24),
                                        padding: getPadding(
                                            left: 13,
                                            top: 20,
                                            right: 13,
                                            bottom: 20),
                                        decoration: AppDecoration.fillOrange100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgGridBlueGray80001,
                                                  height: getSize(16),
                                                  width: getSize(16),
                                                  margin: getMargin(
                                                      left: 7, bottom: 3)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 1,
                                                      bottom: 3),
                                                  child: Text(
                                                      "msg_orders_reservations"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold12Bluegray80001)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightBlueGray80001,
                                                  height: getSize(20),
                                                  width: getSize(20))
                                            ])))
                              ])),
                      Container(
                          margin: getMargin(left: 24, top: 16, right: 24),
                          padding: getPadding(
                              left: 20, top: 18, right: 20, bottom: 18),
                          decoration: AppDecoration.outlineBluegray40033
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgFavoriteBlueGray80001,
                                    height: getVerticalSize(13),
                                    width: getHorizontalSize(15),
                                    margin: getMargin(top: 4, bottom: 4)),
                                Padding(
                                    padding:
                                        getPadding(left: 9, top: 1, bottom: 2),
                                    child: Text("lbl_wishlist".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular16Bluegray80001)),
                                Spacer(),
                                Container(
                                    width: getSize(23),
                                    padding: getPadding(
                                        left: 6, top: 1, right: 6, bottom: 1),
                                    decoration: AppDecoration.txtFillOrange200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder11),
                                    child: Text("lbl_4".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular16Bluegray80001)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft2,
                                    height: getVerticalSize(11),
                                    width: getHorizontalSize(5),
                                    margin:
                                        getMargin(left: 15, top: 5, bottom: 5))
                              ])),
                      BlocSelector<AccountBloc, AccountState,
                              TextEditingController?>(
                          selector: (state) => state.notificationsController,
                          builder: (context, notificationsController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: notificationsController,
                                hintText: "lbl_notifications".tr,
                                margin: getMargin(left: 24, top: 11, right: 24),
                                shape: TextFormFieldShape.RoundedBorder10,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 20,
                                        top: 20,
                                        right: 13,
                                        bottom: 20),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorConstant.blueGray80001,
                                            width: getHorizontalSize(1),
                                            strokeAlign: strokeAlignCenter)),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgNotificationBlueGray80001)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(55)),
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 21,
                                        right: 20,
                                        bottom: 21),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft2)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(55)));
                          }),
                      BlocSelector<AccountBloc, AccountState,
                              TextEditingController?>(
                          selector: (state) => state.addressController,
                          builder: (context, addressController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: addressController,
                                hintText: "lbl_addresses".tr,
                                margin: getMargin(left: 24, top: 11, right: 24),
                                shape: TextFormFieldShape.RoundedBorder10,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 20,
                                        top: 20,
                                        right: 13,
                                        bottom: 20),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorConstant.blueGray80001,
                                            width: getHorizontalSize(1),
                                            strokeAlign: strokeAlignCenter)),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgHomeBlueGray80001)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(55)),
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 21,
                                        right: 20,
                                        bottom: 21),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft2)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(55)));
                          }),
                      BlocSelector<AccountBloc, AccountState,
                              TextEditingController?>(
                          selector: (state) => state.paymentController,
                          builder: (context, paymentController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: paymentController,
                                hintText: "lbl_payment".tr,
                                margin: getMargin(left: 24, top: 11, right: 24),
                                shape: TextFormFieldShape.RoundedBorder10,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 20,
                                        top: 21,
                                        right: 13,
                                        bottom: 21),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorConstant.blueGray80001,
                                            width: getHorizontalSize(1),
                                            strokeAlign: strokeAlignCenter)),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFolder)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(55)),
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 21,
                                        right: 20,
                                        bottom: 21),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft2)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(55)));
                          }),
                      BlocSelector<AccountBloc, AccountState,
                              TextEditingController?>(
                          selector: (state) => state.profileController,
                          builder: (context, profileController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: profileController,
                                hintText: "lbl_profile".tr,
                                margin: getMargin(left: 24, top: 11, right: 24),
                                shape: TextFormFieldShape.RoundedBorder10,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 20,
                                        top: 20,
                                        right: 18,
                                        bottom: 20),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorConstant.blueGray80001,
                                            width: getHorizontalSize(1),
                                            strokeAlign: strokeAlignCenter)),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgUser)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(55)),
                                suffix: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 21,
                                        right: 20,
                                        bottom: 21),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft2)),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(55)));
                          }),
                      Spacer(),
                      BlocSelector<AccountBloc, AccountState,
                              TextEditingController?>(
                          selector: (state) => state.signoutController,
                          builder: (context, signoutController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: signoutController,
                                hintText: "lbl_signout".tr,
                                margin:
                                    getMargin(left: 24, right: 24, bottom: 51),
                                variant:
                                    TextFormFieldVariant.OutlineBluegray40033_1,
                                shape: TextFormFieldShape.RoundedBorder10,
                                padding: TextFormFieldPadding.PaddingT17_1,
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 20,
                                        top: 18,
                                        right: 12,
                                        bottom: 18),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorConstant.blueGray80001,
                                            width: getHorizontalSize(2),
                                            strokeAlign: strokeAlignCenter)),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgNotificationBlueGray8000118x16)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(55)));
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
