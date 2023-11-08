import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/app/widgets/button_kategori.dart';
import 'package:sakuku_app/app/pages/incoming_transaction_page/controllers/incoming_transaction_page_controller.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';

class BottomSheetKategori extends StatelessWidget {
  final controller = Get.put(IncomingTransactionPageController());
  BottomSheetKategori({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 680,
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
              height: 15,
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 30,
                    left: 10,
                    right: 10,
                  ),
                  child: Center(
                    child: Text(
                      "Pilih Kategori",
                      style: GoogleFonts.poppins(
                        fontSize: figmaFontsize(16),
                        fontWeight: FontWeight.w600,
                        color: primaryTextColorBlack,
                      ),
                    ),
                  ),
                ),
                Wrap(
                  children: RxList<Widget>.generate(
                    6,
                    (int index) => Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.selectedCategory.value = index;
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          elevation: 0.1,
                          backgroundColor: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Obx(
                              () => ButtonKategori(
                                icon: index == 0
                                    ? iconBelanja
                                    : index == 1
                                        ? iconDanaDarurat
                                        : index == 2
                                            ? iconIbadah
                                            : index == 3
                                                ? iconPendidikan
                                                : index == 4
                                                    ? iconLiburan
                                                    : iconKategori,
                                title: index == 0
                                    ? 'Belanja'
                                    : index == 1
                                        ? 'Dana darurat'
                                        : index == 2
                                            ? 'Ibadah'
                                            : index == 3
                                                ? 'Pendidikan'
                                                : index == 4
                                                    ? 'Liburan'
                                                    : 'Lainnya',
                                isSelected:
                                    controller.selectedCategory.value == index
                                        ? true
                                        : false,
                                subtitle: index == 0
                                    ? 'Makanan, baju, dll'
                                    : index == 1
                                        ? 'Biaya rumah sakit, dll'
                                        : index == 2
                                            ? 'Haji, umrah, dll'
                                            : index == 3
                                                ? 'Sekolah, kursus, dll'
                                                : index == 4
                                                    ? 'Tiket, hotel, dll'
                                                    : 'Buat kategorimu',
                                iconSize: index == 0
                                    ? 40
                                    : index == 1
                                        ? 40
                                        : index == 2
                                            ? 40
                                            : index == 3
                                                ? 40
                                                : index == 4
                                                    ? 40
                                                    : 35,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: warningColor,
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
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: successColor,
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
                          "Pilih",
                          style: GoogleFonts.poppins(
                            color: backgroundColor,
                            fontSize: figmaFontsize(16),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
