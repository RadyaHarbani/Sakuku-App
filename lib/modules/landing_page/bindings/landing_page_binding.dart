import 'package:get/get.dart';
import 'package:sakuku_app/modules/landing_page/controllers/landing_page_controller.dart';

class LandingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingPageController>(
      () => LandingPageController(),
    );
  }
}