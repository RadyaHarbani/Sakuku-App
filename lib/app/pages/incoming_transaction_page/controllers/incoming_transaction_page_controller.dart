import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class IncomingTransactionPageController extends GetxController {
  final money = NumberFormat("#,##0", "en_US").format(0).obs;
  RxInt selectedCategory = 0.obs;

  TextEditingController? nominalController;

  @override
  void onInit() {
    super.onInit();
    nominalController = new TextEditingController();
  }
}
