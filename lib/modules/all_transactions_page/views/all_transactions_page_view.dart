import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';
import 'package:sakuku_app/routes/app_pages.dart';

class AllTransactionsPageView extends StatelessWidget {
  const AllTransactionsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Semua Transaksi",
          style: GoogleFonts.poppins(
            color: primaryTextColor,
            fontSize: figmaFontsize(17),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.1,
        toolbarHeight: 60,
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Get.toNamed(Routes.TRANSACTION_ENTRY_PAGE);
        },
        icon: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
