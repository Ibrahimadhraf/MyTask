import '../wishlist_screen/widgets/wishlist_item_widget.dart';
import 'bloc/wishlist_bloc.dart';
import 'models/wishlist_item_model.dart';
import 'models/wishlist_model.dart';
import 'package:ebrahim_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<WishlistBloc>(
        create: (context) =>
            WishlistBloc(WishlistState(wishlistModelObj: WishlistModel()))
              ..add(WishlistInitialEvent()),
        child: WishlistScreen());
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
                                    child: Text("lbl_wishlist".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold18)),
                                Container(
                                    height: getVerticalSize(24),
                                    width: getHorizontalSize(27),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.teal800))
                              ])),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 22, top: 24, right: 22),
                              child: BlocSelector<WishlistBloc, WishlistState,
                                      WishlistModel?>(
                                  selector: (state) => state.wishlistModelObj,
                                  builder: (context, wishlistModelObj) {
                                    return GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent:
                                                    getVerticalSize(147),
                                                crossAxisCount: 2,
                                                mainAxisSpacing:
                                                    getHorizontalSize(15),
                                                crossAxisSpacing:
                                                    getHorizontalSize(15)),
                                        physics: BouncingScrollPhysics(),
                                        itemCount: wishlistModelObj
                                                ?.wishlistItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          WishlistItemModel model =
                                              wishlistModelObj
                                                          ?.wishlistItemList[
                                                      index] ??
                                                  WishlistItemModel();
                                          return WishlistItemWidget(model);
                                        });
                                  })))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
