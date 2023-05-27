import 'package:flutter/material.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_eight_screen/add_plant_eight_screen.dart';
import 'package:ebrahim_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:ebrahim_s_application1/presentation/login_screen/login_screen.dart';
import 'package:ebrahim_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ebrahim_s_application1/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:ebrahim_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:ebrahim_s_application1/presentation/qr_code_scanner_one_screen/qr_code_scanner_one_screen.dart';
import 'package:ebrahim_s_application1/presentation/qr_code_scanner_one_one_screen/qr_code_scanner_one_one_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_twelve_screen/add_plant_twelve_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_nine_screen/add_plant_nine_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_five_screen/add_plant_five_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_thirteen_screen/add_plant_thirteen_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_fourteen_screen/add_plant_fourteen_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_two_screen/add_plant_two_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_six_screen/add_plant_six_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_four_screen/add_plant_four_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_eleven_screen/add_plant_eleven_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_one_screen/add_plant_one_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_ten_screen/add_plant_ten_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_three_screen/add_plant_three_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_seven_screen/add_plant_seven_screen.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_screen/add_plant_screen.dart';
import 'package:ebrahim_s_application1/presentation/settings_two_screen/settings_two_screen.dart';
import 'package:ebrahim_s_application1/presentation/plant_details_two_screen/plant_details_two_screen.dart';
import 'package:ebrahim_s_application1/presentation/wishlist_screen/wishlist_screen.dart';
import 'package:ebrahim_s_application1/presentation/plant_of_the_day_screen/plant_of_the_day_screen.dart';
import 'package:ebrahim_s_application1/presentation/plants_one_screen/plants_one_screen.dart';
import 'package:ebrahim_s_application1/presentation/plants_screen/plants_screen.dart';
import 'package:ebrahim_s_application1/presentation/plant_details_one_screen/plant_details_one_screen.dart';
import 'package:ebrahim_s_application1/presentation/plant_details_screen/plant_details_screen.dart';
import 'package:ebrahim_s_application1/presentation/settings_screen/settings_screen.dart';
import 'package:ebrahim_s_application1/presentation/account_screen/account_screen.dart';
import 'package:ebrahim_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String addPlantEightScreen = '/add_plant_eight_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String qrCodeScannerOneScreen = '/qr_code_scanner_one_screen';

  static const String qrCodeScannerOneOneScreen =
      '/qr_code_scanner_one_one_screen';

  static const String addPlantTwelveScreen = '/add_plant_twelve_screen';

  static const String addPlantNineScreen = '/add_plant_nine_screen';

  static const String addPlantFiveScreen = '/add_plant_five_screen';

  static const String addPlantThirteenScreen = '/add_plant_thirteen_screen';

  static const String addPlantFourteenScreen = '/add_plant_fourteen_screen';

  static const String addPlantTwoScreen = '/add_plant_two_screen';

  static const String addPlantSixScreen = '/add_plant_six_screen';

  static const String addPlantFourScreen = '/add_plant_four_screen';

  static const String addPlantElevenScreen = '/add_plant_eleven_screen';

  static const String addPlantOneScreen = '/add_plant_one_screen';

  static const String addPlantTenScreen = '/add_plant_ten_screen';

  static const String addPlantThreeScreen = '/add_plant_three_screen';

  static const String addPlantSevenScreen = '/add_plant_seven_screen';

  static const String addPlantScreen = '/add_plant_screen';

  static const String settingsTwoScreen = '/settings_two_screen';

  static const String plantDetailsTwoScreen = '/plant_details_two_screen';

  static const String wishlistScreen = '/wishlist_screen';

  static const String plantOfTheDayScreen = '/plant_of_the_day_screen';

  static const String plantsOneScreen = '/plants_one_screen';

  static const String plantsScreen = '/plants_screen';

  static const String plantDetailsOneScreen = '/plant_details_one_screen';

  static const String plantDetailsScreen = '/plant_details_screen';

  static const String settingsOnePage = '/settings_one_page';

  static const String settingsScreen = '/settings_screen';

  static const String accountScreen = '/account_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        addPlantEightScreen: AddPlantEightScreen.builder,
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        signUpScreen: SignUpScreen.builder,
        forgetPasswordScreen: ForgetPasswordScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        qrCodeScannerOneScreen: QrCodeScannerOneScreen.builder,
        qrCodeScannerOneOneScreen: QrCodeScannerOneOneScreen.builder,
        addPlantTwelveScreen: AddPlantTwelveScreen.builder,
        addPlantNineScreen: AddPlantNineScreen.builder,
        addPlantFiveScreen: AddPlantFiveScreen.builder,
        addPlantThirteenScreen: AddPlantThirteenScreen.builder,
        addPlantFourteenScreen: AddPlantFourteenScreen.builder,
        addPlantTwoScreen: AddPlantTwoScreen.builder,
        addPlantSixScreen: AddPlantSixScreen.builder,
        addPlantFourScreen: AddPlantFourScreen.builder,
        addPlantElevenScreen: AddPlantElevenScreen.builder,
        addPlantOneScreen: AddPlantOneScreen.builder,
        addPlantTenScreen: AddPlantTenScreen.builder,
        addPlantThreeScreen: AddPlantThreeScreen.builder,
        addPlantSevenScreen: AddPlantSevenScreen.builder,
        addPlantScreen: AddPlantScreen.builder,
        settingsTwoScreen: SettingsTwoScreen.builder,
        plantDetailsTwoScreen: PlantDetailsTwoScreen.builder,
        wishlistScreen: WishlistScreen.builder,
        plantOfTheDayScreen: PlantOfTheDayScreen.builder,
        plantsOneScreen: PlantsOneScreen.builder,
        plantsScreen: PlantsScreen.builder,
        plantDetailsOneScreen: PlantDetailsOneScreen.builder,
        plantDetailsScreen: PlantDetailsScreen.builder,
        settingsScreen: SettingsScreen.builder,
        accountScreen: AccountScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginScreen.builder
      };
}
