import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/on_boarding_page/controllers/on_boarding_page_controller.dart';

class OnBoardingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingPageController>(
      () => OnBoardingPageController(),
    );
  }
}
