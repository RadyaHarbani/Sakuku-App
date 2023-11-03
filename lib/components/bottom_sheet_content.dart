import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/components/button_bottom_sheet_content.dart';
import 'package:sakuku_app/components/button_catat_transaksi.dart';
import 'package:sakuku_app/helpers/themes.dart';

class BottomSheetComponent extends StatelessWidget {
  const BottomSheetComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
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
                      top: 10, bottom: 27, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Apa yang ingin kamu lakukan?",
                            style: GoogleFonts.poppins(
                              fontSize: figmaFontsize(14),
                              fontWeight: FontWeight.w600,
                              color: primaryColor,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Pilih salah satu untuk melanjutkan",
                            style: GoogleFonts.poppins(
                              height: 0.9,
                              fontSize: figmaFontsize(11),
                              fontWeight: FontWeight.w500,
                              color: primaryColor.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Baru",
                            style: GoogleFonts.poppins(
                              fontSize: figmaFontsize(11),
                              fontWeight: FontWeight.bold,
                              color: generalBackgroundColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ButtonBottomSheetContent(
                  imageAsset: iconPemasukan,
                  title: 'Catat Transaksi',
                  subtitle: 'Catat Pemasukan atau Pengeluaran Kamu',
                  onPressed: () {
                    Get.back();
                    Get.bottomSheet(
                      ButtonCatatTransaksi(),
                      backgroundColor: generalBackgroundColor,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 3,
                ),
                ButtonBottomSheetContent(
                  imageAsset: iconNulis,
                  title: 'Tentukan Budgetmu',
                  subtitle: 'Catat Budget Bulananmu',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 3,
                ),
                ButtonBottomSheetContent(
                  imageAsset: iconTarget,
                  title: 'Buat Targetmu',
                  subtitle: 'Menabung dan Kejar Pencapaianmu',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
