import 'bloc/qr_code_scanner_one_one_bloc.dart';
import 'models/qr_code_scanner_one_one_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class QrCodeScannerOneOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<QrCodeScannerOneOneBloc>(
        create: (context) => QrCodeScannerOneOneBloc(QrCodeScannerOneOneState(
            qrCodeScannerOneOneModelObj: QrCodeScannerOneOneModel()))
          ..add(QrCodeScannerOneOneInitialEvent()),
        child: QrCodeScannerOneOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QrCodeScannerOneOneBloc, QrCodeScannerOneOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blueGray5001,
              body: Container(
                  height: getVerticalSize(926),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle5909,
                        height: getVerticalSize(819),
                        width: getHorizontalSize(428),
                        alignment: Alignment.bottomCenter),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: getPadding(
                                left: 32, top: 11, right: 32, bottom: 11),
                            decoration: AppDecoration.fillBlack9006d,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      height: getVerticalSize(21),
                                      width: getHorizontalSize(133),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.black900,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(10)))),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowleft,
                                      height: getVerticalSize(17),
                                      width: getHorizontalSize(22),
                                      alignment: Alignment.centerLeft,
                                      margin: getMargin(top: 5),
                                      onTap: () {
                                        onTapImgArrowleft(context);
                                      }),
                                  Spacer(),
                                  Container(
                                      margin: getMargin(
                                          left: 141, right: 141, bottom: 32),
                                      padding: getPadding(all: 12),
                                      decoration: AppDecoration.outlineWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder40),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getSize(56),
                                                width: getSize(56),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                28)),
                                                    border: Border.all(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        width:
                                                            getHorizontalSize(
                                                                2))))
                                          ]))
                                ])))
                  ]))));
    });
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
