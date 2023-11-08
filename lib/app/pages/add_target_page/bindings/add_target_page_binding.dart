import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/add_target_page/controllers/add_target_page_controller.dart';

class AddTargetsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddTargetsPageController>(
      () => AddTargetsPageController(),
    );
  }
}