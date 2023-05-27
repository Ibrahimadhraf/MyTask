import '../plants_screen/widgets/filtercategorie2_item_widget.dart';
import '../plants_screen/widgets/listrectanglefi1_item_widget.dart';
import 'bloc/plants_bloc.dart';
import 'models/filtercategorie2_item_model.dart';
import 'models/listrectanglefi1_item_model.dart';
import 'models/plants_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class PlantsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PlantsBloc>(
        create: (context) =>
            PlantsBloc(PlantsState(plantsModelObj: PlantsModel()))
              ..add(PlantsInitialEvent()),
        child: PlantsScreen());
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
                                    child: Text("lbl_plants".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold18)),
                                Container(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(27),
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
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(54),
                              child: BlocSelector<PlantsBloc, PlantsState,
                                      PlantsModel?>(
                                  selector: (state) => state.plantsModelObj,
                                  builder: (context, plantsModelObj) {
                                    return ListView.separated(
                                        padding: getPadding(left: 22, top: 23),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(8));
                                        },
                                        itemCount: plantsModelObj
                                                ?.filtercategorie2ItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Filtercategorie2ItemModel model =
                                              plantsModelObj
                                                          ?.filtercategorie2ItemList[
                                                      index] ??
                                                  Filtercategorie2ItemModel();
                                          return Filtercategorie2ItemWidget(
                                              model);
                                        });
                                  }))),
                      Padding(
                          padding: getPadding(left: 22, top: 23, right: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("lbl_all_plants".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold18Teal800),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGridBlueGray300,
                                    height: getSize(14),
                                    width: getSize(14),
                                    margin: getMargin(top: 5, bottom: 2)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMenuTeal70003,
                                    height: getVerticalSize(14),
                                    width: getHorizontalSize(15),
                                    margin:
                                        getMargin(left: 13, top: 5, bottom: 2))
                              ])),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 21, top: 15, right: 22),
                              child: BlocSelector<PlantsBloc, PlantsState,
                                      PlantsModel?>(
                                  selector: (state) => state.plantsModelObj,
                                  builder: (context, plantsModelObj) {
                                    return ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(15));
                                        },
                                        itemCount: plantsModelObj
                                                ?.listrectanglefi1ItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Listrectanglefi1ItemModel model =
                                              plantsModelObj
                                                          ?.listrectanglefi1ItemList[
                                                      index] ??
                                                  Listrectanglefi1ItemModel();
                                          return Listrectanglefi1ItemWidget(
                                              model);
                                        });
                                  })))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
