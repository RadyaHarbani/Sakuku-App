import 'package:get/get.dart';
import 'package:sakuku_app/modules/register_page/controllers/register_page_controller.dart';

class RegisterPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterPageController>(
      () => RegisterPageController(),
    );
  }
}