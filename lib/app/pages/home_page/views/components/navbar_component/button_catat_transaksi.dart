import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/app/pages/home_page/views/components/navbar_component/button_pemasukan_pengeluaran.dart';
import 'package:sakuku_app/app/pages/transaction_page/controllers/transaction_page_controller.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

class ButtonCatatTransaksi extends StatelessWidget {
  ButtonCatatTransaksi({super.key});
  final controller = Get.put(TransactionPageController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
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
                      top: 10, bottom: 20, left: 10, right: 10),
                  child: Center(
                    child: Text(
                      "Pilih Catatan Transaksi",
                      style: GoogleFonts.poppins(
                        fontSize: figmaFontsize(16),
                        fontWeight: FontWeight.bold,
                        color: primaryTextColorBlack,
                      ),
                    ),
                  ),
                ),
                Wrap(
                  children: List<Widget>.generate(
                    2,
                    (int index) => ButtonPemasukanPengeluaran(
                      angle: index == 0 ? 4.7 : pi / 2,
                      color: index == 0 ? warningColor : successColor,
                      title: index == 0 ? 'Pengeluaran' : 'Pemasukan',
                      onPressed: () {
                        controller.selectedTransaksi.value = index;
                        index == 0
                            ? Get.toNamed(Routes.EXIT_TRANSACTION_PAGE)
                            : Get.toNamed(Routes.INCOMING_TRANSACTION_PAGE);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
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
                      fontWeight: FontWeight.w600,
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
