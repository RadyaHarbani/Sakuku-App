import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/incoming_transaction_page/controllers/incoming_transaction_page_controller.dart';

class IncomingTransactionPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IncomingTransactionPageController>(
      () => IncomingTransactionPageController(),
    );
  }
}