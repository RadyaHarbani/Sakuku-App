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
            size: 18,
            color: generalBackgroundColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 155,
                  height: 40,
                  decoration: BoxDecoration(
                    color: anotherPrimaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset('assets/icons/icon_arrow_pengeluaran.png'),
                ),
                Container(
                  width: 155,
                  height: 40,
                  decoration: BoxDecoration(
                    color: generalBackgroundColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
