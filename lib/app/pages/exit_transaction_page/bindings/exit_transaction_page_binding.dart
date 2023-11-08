import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/exit_transaction_page/controllers/exit_transaction_page_controller.dart';

class ExitTransactionPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExitTransactionPageBController>(
      () => ExitTransactionPageBController(),
    );
  }
}