import 'package:get/get.dart';
import 'package:sakuku_app/modules/all_transactions_page/controllers/all_transactions_page_controller.dart';

class AllTransactionsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllTransactionsPageController>(
      () => AllTransactionsPageController(),
    );
  }
}