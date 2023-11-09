import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/transaction_page/controllers/transaction_page_controller.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/transaction_page_themes.dart';

class AllTransactionsPageView extends GetView<TransactionPageController> {
  const AllTransactionsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Semua Transaksi",
          style: titleAllTransactionsStyle,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.1,
        toolbarHeight: 60,
      ),
    );
  }
}
