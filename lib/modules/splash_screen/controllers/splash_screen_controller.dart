import 'package:get/get.dart';

class SplashScreenController extends GetxController {
    Future splashScreen() async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAndToNamed(
          '/on-boarding-page',
        );
      },
    );
  }
  
  @override
  void onInit() {
    super.onInit();
    splashScreen();
  }
}