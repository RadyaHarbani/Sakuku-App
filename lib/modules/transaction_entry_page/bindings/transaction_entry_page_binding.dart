import 'package:get/get.dart';
import 'package:sakuku_app/modules/transaction_entry_page/controllers/transaction_entry_page_controller.dart';

class TransactionEntryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionEntryPageController>(
      () => TransactionEntryPageController(),
    );
  }
}