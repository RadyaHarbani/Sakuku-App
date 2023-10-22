part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const ON_BOARDING_PAGE = _Paths.ON_BOARDING_PAGE;
  static const LANDING_PAGE = _Paths.LANDING_PAGE;
  static const LOGIN_PAGE = _Paths.LOGIN_PAGE;
  static const REGISTER_PAGE = _Paths.REGISTER_PAGE;
  static const HOME_PAGE = _Paths.HOME_PAGE;
  static const PROFILE_PAGE = _Paths.PROFILE_PAGE;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH_SCREEN = '/splash-screen';
  static const ON_BOARDING_PAGE = '/on-boarding-page';
  static const LANDING_PAGE = '/landing-page';
  static const LOGIN_PAGE = '/login-page';
  static const REGISTER_PAGE = '/register-page';
  static const HOME_PAGE = '/home-page';
  static const PROFILE_PAGE = '/profile-page';
}
