import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/app/widgets/button_pemasukan_pengeluaran.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

class ButtonCatatTransaksi extends StatelessWidget {
  const ButtonCatatTransaksi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 30, left: 10, right: 10),
                  child: Center(
                    child: Text(
                      "Pilih Catatan Transaksi",
                      style: GoogleFonts.poppins(
                        fontSize: figmaFontsize(16),
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
                ButtonPemasukanPengeluaran(
                  angle: 4.7,
                  color: successColor,
                  title: 'Pemasukan',
                  onPressed: () {
                    Get.back();
                    Get.toNamed(Routes.INCOMING_TRANSACTION_PAGE);
                  },
                ),
                SizedBox(
                  height: 3,
                ),
                ButtonPemasukanPengeluaran(
                  angle: pi / 2,
                  color: warningColor,
                  title: 'Pengeluaran',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[800],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Batal",
                    style: GoogleFonts.poppins(
                      color: backgroundColor,
                      fontSize: figmaFontsize(16),
                      fontWeight: FontWeight.w500,
                    ),
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
