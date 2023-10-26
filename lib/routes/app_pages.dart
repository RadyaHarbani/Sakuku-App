import 'package:get/get.dart';
import 'package:sakuku_app/modules/add_transactions_page/bindings/add_transactions_page_binding.dart';
import 'package:sakuku_app/modules/add_transactions_page/views/add_transactions_page_view.dart';
import 'package:sakuku_app/modules/all_transactions_page/bindings/all_transactions_page_binding.dart';
import 'package:sakuku_app/modules/all_transactions_page/views/all_transactions_page_view.dart';
import 'package:sakuku_app/modules/home_page/bindings/home_page_binding.dart';
import 'package:sakuku_app/modules/home_page/views/home_page_view.dart';
import 'package:sakuku_app/modules/landing_page/bindings/landing_page_binding.dart';
import 'package:sakuku_app/modules/landing_page/views/landing_page_view.dart';
import 'package:sakuku_app/modules/login_page/bindings/login_page_binding.dart';
import 'package:sakuku_app/modules/login_page/views/login_page_view.dart';
import 'package:sakuku_app/modules/on_boarding_page/bindings/on_boarding_page_binding.dart';
import 'package:sakuku_app/modules/on_boarding_page/views/on_boarding_page_view.dart';
import 'package:sakuku_app/modules/profile_page/bindings/profile_page_binding.dart';
import 'package:sakuku_app/modules/profile_page/views/profile_page_view.dart';
import 'package:sakuku_app/modules/register_page/bindings/register_page_binding.dart';
import 'package:sakuku_app/modules/register_page/views/register_page_view.dart';
import 'package:sakuku_app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:sakuku_app/modules/splash_screen/views/splash_screen_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();


  static const INITIAL = Routes.HOME_PAGE;


  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ON_BOARDING_PAGE,
      page: () => OnBoardingPageView(),
      binding: OnBoardingPageBinding(),
    ),
    GetPage(
      name: _Paths.LANDING_PAGE,
      page: () => LandingPageView(),
      binding: LandingPageBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => RegisterPageView(),
      binding: RegisterPageBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.ALL_TRANSACTIONS_PAGE,
      page: () => AllTransactionsPageView(),
      binding: AllTransactionsPageBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TRANSACTIONS_PAGE,
      page: () => AddTransactionsPageView(),
      binding: AddTransactionsPageBinding(),
    ),
  ];
}
