import 'bloc/forget_password_bloc.dart';
import 'models/forget_password_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:ebrahim_s_application1/core/utils/validation_functions.dart';
import 'package:ebrahim_s_application1/widgets/custom_button.dart';
import 'package:ebrahim_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgetPasswordBloc>(
        create: (context) => ForgetPasswordBloc(
            ForgetPasswordState(forgetPasswordModelObj: ForgetPasswordModel()))
          ..add(ForgetPasswordInitialEvent()),
        child: ForgetPasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.teal800,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    height: getVerticalSize(926),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgPattern,
                          height: getVerticalSize(1001),
                          width: getHorizontalSize(426),
                          alignment: Alignment.bottomCenter),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: getMargin(bottom: 630),
                                  padding: getPadding(
                                      left: 44, top: 2, right: 44, bottom: 2),
                                  decoration:
                                      AppDecoration.gradientTeal800Teal80000,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(17),
                                            width: getHorizontalSize(24),
                                            margin: getMargin(top: 47),
                                            onTap: () {
                                              onTapImgArrowleft(context);
                                            }),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgDgdalogoarpng,
                                            height: getSize(164),
                                            width: getSize(164),
                                            alignment: Alignment.center,
                                            margin: getMargin(top: 10)),
                                        Padding(
                                            padding: getPadding(top: 34),
                                            child: Text(
                                                "lbl_forget_password".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterBold24)),
                                        BlocSelector<
                                                ForgetPasswordBloc,
                                                ForgetPasswordState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.emailController,
                                            builder:
                                                (context, emailController) {
                                              return CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller: emailController,
                                                  hintText:
                                                      "msg_enter_your_e_mail"
                                                          .tr,
                                                  margin: getMargin(top: 28),
                                                  variant:
                                                      TextFormFieldVariant.None,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .InterRegular12,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  textInputType: TextInputType
                                                      .emailAddress,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidEmail(value,
                                                            isRequired:
                                                                true))) {
                                                      return "Please enter valid email";
                                                    }
                                                    return null;
                                                  });
                                            }),
                                        CustomButton(
                                            height: getVerticalSize(45),
                                            text: "lbl_reset_password"
                                                .tr
                                                .toUpperCase(),
                                            margin: getMargin(top: 47))
                                      ]))))
                    ])))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
