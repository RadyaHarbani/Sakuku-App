import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/transaction_page/controllers/transaction_page_controller.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/button_kategori.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/transaction_page_themes.dart';

class BottomSheetKategori extends StatelessWidget {
  final controller = Get.put(TransactionPageController());
  BottomSheetKategori({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHeight * 0.84,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: sizeWidth * 0.1,
                  height: sizeHeight * 0.007,
                  decoration: BoxDecoration(
                    color: primaryTextColorGrey.withOpacity(0.5),
                    borderRadius: defaulBorderRadius,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: sizeHeight * 0.03,
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Center(
                  child: Text(
                    "Pilih Kategori",
                    style: titleBottomSheetKategori,
                  ),
                ),
                SizedBox(
                  height: sizeHeight * 0.03,
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
                            vertical: sizeHeight * 0.018,
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
                  height: sizeHeight * 0.05,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: warningColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: defaulBorderRadius,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: sizeWidth * 0.04,
                          ),
                        ),
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          "Batal",
                          style: buttonBatalKategori,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: sizeWidth * 0.02,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: secondaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: defaulBorderRadius,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: sizeWidth * 0.04,
                          ),
                        ),
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          "Pilih",
                          style: buttonPilihKategori,
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
