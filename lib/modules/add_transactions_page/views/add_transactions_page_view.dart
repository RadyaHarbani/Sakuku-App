import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';

class AddTransactionsPageView extends StatelessWidget {
  const AddTransactionsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(
          "Catat Transaksi",
          style: GoogleFonts.poppins(
            color: generalBackgroundColor,
            fontSize: figmaFontsize(17),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 60,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: generalBackgroundColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                
              ),
            ],
          ),
        ],
      ),
    );
  }
}
