import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/transaction_page/controllers/transaction_page_controller.dart';

class TransactionPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionPageController>(
      () => TransactionPageController(),
    );
  }
}