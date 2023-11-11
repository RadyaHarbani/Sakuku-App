import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/all_target_page/controllers/all_target_page_controller.dart';

class AllTargetPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllTargetPageController>(
      () => AllTargetPageController(),
    );
  }
}