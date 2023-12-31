import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/login_page/controllers/login_page_controller.dart';

class LoginPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginPageController>(
      () => LoginPageController(),
    );
  }
}