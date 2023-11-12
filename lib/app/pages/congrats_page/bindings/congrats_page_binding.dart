import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/congrats_page/controllers/congrats_page_controller.dart';

class CongratsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CongratsPageController>(
      () => CongratsPageController(),
    );
  }
}