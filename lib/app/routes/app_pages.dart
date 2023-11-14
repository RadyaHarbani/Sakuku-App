import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/all_target_page/bindings/all_target_page_binding.dart';
import 'package:sakuku_app/app/pages/all_target_page/views/all_target_page_view.dart';
import 'package:sakuku_app/app/pages/budget_page.dart/bindings/budget_page_binding.dart';
import 'package:sakuku_app/app/pages/budget_page.dart/views/budget_page_view.dart';
import 'package:sakuku_app/app/pages/congrats_page/bindings/congrats_page_binding.dart';
import 'package:sakuku_app/app/pages/congrats_page/views/congrats_nabung_page.dart';
import 'package:sakuku_app/app/pages/congrats_page/views/congrats_selesai_page.dart';
import 'package:sakuku_app/app/pages/congrats_page/views/congrats_target_page.dart';
import 'package:sakuku_app/app/pages/splash_screen/views/splash_screen_view.dart';
import 'package:sakuku_app/app/widgets/bottom_nav_component.dart';
import 'package:sakuku_app/app/pages/add_target_page/bindings/add_target_page_binding.dart';
import 'package:sakuku_app/app/pages/add_target_page/views/add_target_first_page_view.dart';
import 'package:sakuku_app/app/pages/add_target_page/views/add_target_second_page_view.dart';
import 'package:sakuku_app/app/pages/add_target_page/views/add_target_third_page_view.dart';
import 'package:sakuku_app/app/pages/add_target_page/views/add_target_fourth_page_view.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/all_transactions_page_view.dart';
import 'package:sakuku_app/app/pages/transaction_page/bindings/transaction_page_binding.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/exit_transaction_page_view.dart';
import 'package:sakuku_app/app/pages/home_page/bindings/home_page_binding.dart';
import 'package:sakuku_app/app/pages/home_page/views/home_page_view.dart';
import 'package:sakuku_app/app/pages/landing_page/bindings/landing_page_binding.dart';
import 'package:sakuku_app/app/pages/landing_page/views/landing_page_view.dart';
import 'package:sakuku_app/app/pages/login_page/bindings/login_page_binding.dart';
import 'package:sakuku_app/app/pages/login_page/views/login_page_view.dart';
import 'package:sakuku_app/app/pages/on_boarding_page/bindings/on_boarding_page_binding.dart';
import 'package:sakuku_app/app/pages/on_boarding_page/views/on_boarding_page_view.dart';
import 'package:sakuku_app/app/pages/profile_page/bindings/profile_page_binding.dart';
import 'package:sakuku_app/app/pages/profile_page/views/profile_page_view.dart';
import 'package:sakuku_app/app/pages/register_page/bindings/register_page_binding.dart';
import 'package:sakuku_app/app/pages/register_page/views/register_page_view.dart';
import 'package:sakuku_app/app/pages/splash_screen/bindings/splash_screen_binding.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/incoming_transaction_page_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ALL_TARGET_PAGE;

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
      binding: TransactionPageBinding(),
    ),
    GetPage(
      name: _Paths.ALL_TARGET_PAGE,
      page: () => AllTargetPageView(),
      binding: AllTargetPageBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TARGET_FIRST_PAGE,
      page: () => AddTargetFirstPageView(),
      binding: AddTargetsPageBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TARGET_SECOND_PAGE,
      page: () => AddTargetSecondPageView(),
      binding: AddTargetsPageBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TARGET_THIRD_PAGE,
      page: () => AddTargetThirdPageView(),
      binding: AddTargetsPageBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TARGET_fOURTH_PAGE,
      page: () => AddTargetFourthPageView(),
      binding: AddTargetsPageBinding(),
    ),
    GetPage(
      name: _Paths.INCOMING_TRANSACTION_PAGE,
      page: () => IncomingTransactionPageView(),
      binding: TransactionPageBinding(),
    ),
    GetPage(
      name: _Paths.EXIT_TRANSACTION_PAGE,
      page: () => ExitTransactionPageView(),
      binding: TransactionPageBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATOR_COMPONENT,
      page: () => BottomNavComponent(),
    ),
    GetPage(
      name: _Paths.CONGRATS_TARGET_PAGE,
      page: () => CongratsTargetPage(),
      binding: CongratsPageBinding(),
    ),
    GetPage(
      name: _Paths.CONGRATS_NABUNG_PAGE,
      page: () => CongratsNabungPage(),
      binding: CongratsPageBinding(),
    ),
    GetPage(
      name: _Paths.CONGRATS_SELESAI_PAGE,
      page: () => CongratsSelesaiPage(),
      binding: CongratsPageBinding(),
    ),
    GetPage(
      name: _Paths.BUDGET_PAGE,
      page: () => BudgetPageView(),
      binding: BudgetPageBinding(),
    ),
  ];
}
