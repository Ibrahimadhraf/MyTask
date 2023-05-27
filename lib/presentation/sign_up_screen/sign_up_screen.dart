import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class SignUpScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.teal800,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 8),
                              child: Container(
                                  height: getVerticalSize(1142),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                margin: getMargin(right: 1),
                                                padding: getPadding(
                                                    left: 34,
                                                    top: 299,
                                                    right: 34,
                                                    bottom: 299),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: fs.Svg(
                                                            ImageConstant
                                                                .imgPattern),
                                                        fit: BoxFit.cover)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 9,
                                                              top: 75,
                                                              right: 8),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_password"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular16),
                                                                BlocSelector<
                                                                        SignUpBloc,
                                                                        SignUpState,
                                                                        TextEditingController?>(
                                                                    selector:
                                                                        (state) =>
                                                                            state
                                                                                .rectangletwoController,
                                                                    builder:
                                                                        (context,
                                                                            rectangletwoController) {
                                                                      return CustomTextFormField(
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          autofocus:
                                                                              true,
                                                                          controller:
                                                                              rectangletwoController,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  8),
                                                                          variant:
                                                                              TextFormFieldVariant.FillWhiteA700);
                                                                    })
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 9,
                                                              top: 15,
                                                              right: 8),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "msg_confirm_password"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular16),
                                                                BlocSelector<
                                                                        SignUpBloc,
                                                                        SignUpState,
                                                                        TextEditingController?>(
                                                                    selector:
                                                                        (state) =>
                                                                            state
                                                                                .rectangletwoController1,
                                                                    builder:
                                                                        (context,
                                                                            rectangletwoController1) {
                                                                      return CustomTextFormField(
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          autofocus:
                                                                              true,
                                                                          controller:
                                                                              rectangletwoController1,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  8),
                                                                          variant:
                                                                              TextFormFieldVariant.FillWhiteA700);
                                                                    })
                                                              ])),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  45),
                                                          text:
                                                              "lbl_signup2".tr,
                                                          margin: getMargin(
                                                              left: 9,
                                                              top: 47)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 50),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "msg_already_have_account2"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text: "lbl_signin"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .orange200,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            decoration: TextDecoration.underline))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 44,
                                                    top: 2,
                                                    right: 44,
                                                    bottom: 2),
                                                decoration: AppDecoration
                                                    .gradientTeal800Teal80000,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleft,
                                                          height:
                                                              getVerticalSize(
                                                                  17),
                                                          width:
                                                              getHorizontalSize(
                                                                  22),
                                                          margin: getMargin(
                                                              top: 46),
                                                          onTap: () {
                                                            onTapImgArrowleft(
                                                                context);
                                                          }),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgDgdalogoarpng,
                                                          height: getSize(164),
                                                          width: getSize(164),
                                                          alignment:
                                                              Alignment.center,
                                                          margin: getMargin(
                                                              top: 10)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 34),
                                                          child: Text(
                                                              "lbl_sign_up2".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold24)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 26),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_full_name"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular16),
                                                                BlocSelector<
                                                                        SignUpBloc,
                                                                        SignUpState,
                                                                        TextEditingController?>(
                                                                    selector:
                                                                        (state) =>
                                                                            state
                                                                                .rectangletwoController2,
                                                                    builder:
                                                                        (context,
                                                                            rectangletwoController2) {
                                                                      return CustomTextFormField(
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          autofocus:
                                                                              true,
                                                                          controller:
                                                                              rectangletwoController2,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  8),
                                                                          variant:
                                                                              TextFormFieldVariant.FillWhiteA700);
                                                                    })
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 15),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_email"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular16),
                                                                BlocSelector<
                                                                        SignUpBloc,
                                                                        SignUpState,
                                                                        TextEditingController?>(
                                                                    selector:
                                                                        (state) =>
                                                                            state
                                                                                .rectangletwoController3,
                                                                    builder:
                                                                        (context,
                                                                            rectangletwoController3) {
                                                                      return CustomTextFormField(
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          autofocus:
                                                                              true,
                                                                          controller:
                                                                              rectangletwoController3,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  8),
                                                                          variant: TextFormFieldVariant
                                                                              .FillWhiteA700,
                                                                          textInputAction:
                                                                              TextInputAction.done);
                                                                    })
                                                              ]))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
