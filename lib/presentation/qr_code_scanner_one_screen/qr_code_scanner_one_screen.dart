import 'bloc/qr_code_scanner_one_bloc.dart';
import 'models/qr_code_scanner_one_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class QrCodeScannerOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<QrCodeScannerOneBloc>(
        create: (context) => QrCodeScannerOneBloc(QrCodeScannerOneState(
            qrCodeScannerOneModelObj: QrCodeScannerOneModel()))
          ..add(QrCodeScannerOneInitialEvent()),
        child: QrCodeScannerOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QrCodeScannerOneBloc, QrCodeScannerOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blueGray5001,
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
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(10))))
                                    ]))),
                        Container(
                            height: getVerticalSize(882),
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: getVerticalSize(819),
                                          width: double.maxFinite,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle5909,
                                                    height:
                                                        getVerticalSize(819),
                                                    width:
                                                        getHorizontalSize(428),
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        padding: getPadding(
                                                            left: 48,
                                                            top: 42,
                                                            right: 48,
                                                            bottom: 42),
                                                        decoration:
                                                            AppDecoration
                                                                .fillBlack9006d,
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "msg_scan_the_qr_code"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterMedium25),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgQrcodeWhiteA700266x311,
                                                                  height:
                                                                      getVerticalSize(
                                                                          266),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          311),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              95)),
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          326),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              2,
                                                                          top:
                                                                              47,
                                                                          right:
                                                                              4),
                                                                  child: Text(
                                                                      "msg_the_qr_code_will"
                                                                          .tr,
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .txtMontserratSemiBold14)),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCall,
                                                                  height:
                                                                      getSize(
                                                                          60),
                                                                  width:
                                                                      getSize(
                                                                          60),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              38)),
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          45),
                                                                  text:
                                                                      "lbl_scan_qr_code"
                                                                          .tr,
                                                                  margin: getMargin(
                                                                      top: 48,
                                                                      bottom:
                                                                          53))
                                                            ])))
                                              ]))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          width: double.maxFinite,
                                          margin: getMargin(bottom: 808),
                                          padding: getPadding(
                                              left: 24,
                                              top: 25,
                                              right: 24,
                                              bottom: 25),
                                          decoration: AppDecoration.fillTeal800,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft,
                                                    height: getVerticalSize(17),
                                                    width:
                                                        getHorizontalSize(22),
                                                    margin: getMargin(
                                                        top: 3, bottom: 3),
                                                    onTap: () {
                                                      onTapImgArrowleft(
                                                          context);
                                                    }),
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text(
                                                        "lbl_scan_qr".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold18)),
                                                Container(
                                                    height: getVerticalSize(24),
                                                    width:
                                                        getHorizontalSize(27),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .teal800))
                                              ])))
                                ]))
                      ]))));
    });
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
