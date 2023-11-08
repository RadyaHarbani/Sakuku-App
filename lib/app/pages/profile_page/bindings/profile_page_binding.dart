import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/profile_page/controllers/profile_page_controller.dart';

class ProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilePageController>(
      () => ProfilePageController(),
    );
  }
}