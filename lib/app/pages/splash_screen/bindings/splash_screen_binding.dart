import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/splash_screen/controllers/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashScreenController>(
       SplashScreenController(),
    );
  }
}
