import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/budget_page.dart/controllers/budget_page_controller.dart';

class BudgetPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BudgetPageController>(
      () => BudgetPageController(),
    );
  }
}