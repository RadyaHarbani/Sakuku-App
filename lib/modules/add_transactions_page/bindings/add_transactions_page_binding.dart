import 'package:get/get.dart';
import 'package:sakuku_app/modules/add_transactions_page/controllers/add_transactions_page_controller.dart';

class AddTransactionsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddTransactionsPageController>(
      () => AddTransactionsPageController(),
    );
  }
}