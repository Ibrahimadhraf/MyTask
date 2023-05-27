import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.teal800,
            body: Container(
              height: getVerticalSize(
                926,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgPattern,
                    height: getVerticalSize(
                      1001,
                    ),
                    width: getHorizontalSize(
                      426,
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SingleChildScrollView(
                      child: Container(
                        height: getVerticalSize(
                          575,
                        ),
                        width: double.maxFinite,
                        margin: getMargin(
                          bottom: 558,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: getVerticalSize(
                                  503,
                                ),
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(
                                      0.5,
                                      0.44,
                                    ),
                                    end: Alignment(
                                      0.5,
                                      1,
                                    ),
                                    colors: [
                                      ColorConstant.teal800,
                                      ColorConstant.teal80000,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgDgdalogoarpng,
                              height: getSize(
                                241,
                              ),
                              width: getSize(
                                241,
                              ),
                              alignment: Alignment.bottomCenter,
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
      },
    );
  }
}
