import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/alert_container.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/bottom_sheet_kategori.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/button_textfield.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/custom_appbar_widget.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/custom_button_simpan.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/text_title_textfield.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/textfield_catatan.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/custom_textfield_input.dart';
import 'package:sakuku_app/app/pages/transaction_page/controllers/transaction_page_controller.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';

class ExitTransactionPageView extends GetView<TransactionPageController> {
  const ExitTransactionPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: CustomAppbarWidget(
          angle: 4.7,
          color: warningColor,
          title: "Pengeluaran",
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: sizeWidth,
          height: sizeHeight * 0.9,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 15,
                      bottom: 35,
                    ),
                    width: sizeWidth,
                    height: sizeHeight * 0.17,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextTitleTextfield(
                          title: 'Masukkan Nominal Uangmu',
                          subtitle: 'Nominal dalam bentuk rupiah',
                          isOpsional: false,
                          isAbovePrimary: true,
                        ),
                        SizedBox(
                          height: sizeHeight * 0.015,
                        ),
                        CustomTextfieldInput(
                          controllerNominal:
                              controller.nominalPengeluaranController,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: sizeWidth,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: sizeHeight * 0.07,
                            ),
                            TextTitleTextfield(
                              title: 'Kategori',
                              subtitle: 'Pilih salah satu kategorimu',
                              isOpsional: false,
                              isAbovePrimary: false,
                            ),
                            SizedBox(
                              height: sizeHeight * 0.015,
                            ),
                            Obx(() => ButtonTextfield(
                                  onPressed: () {
                                    Get.bottomSheet(
                                      BottomSheetKategori(),
                                      backgroundColor: backgroundColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: defaultBottomSheetRadius,
                                      ),
                                      isScrollControlled: true,
                                    );
                                  },
                                  namaIcon: iconKategori,
                                  scaleIcon: 25,
                                  hintText:
                                      'Kategori : ${controller.listKategoriPengeluaran[controller.selectedKategoriPengeluaran.value]}',
                                )),
                            SizedBox(
                              height: sizeHeight * 0.02,
                            ),
                            TextTitleTextfield(
                              title: 'Catatan',
                              subtitle:
                                  'Tulis deskripsi singkat buat transaksimu',
                              isOpsional: true,
                              isAbovePrimary: false,
                            ),
                            SizedBox(
                              height: sizeHeight * 0.015,
                            ),
                            TextfieldCatatan(
                              inputType: TextInputType.text,
                              hintText: 'Cth : "Liburan ke Bali"',
                              namaIcon: iconNulis,
                              scale: 20,
                              controller:
                                  controller.catatanPengeluaranController!,
                            ),
                            SizedBox(
                              height: sizeHeight * 0.02,
                            ),
                            TextTitleTextfield(
                              title: 'Tanggal',
                              subtitle: 'Masukkan tanggal transaksimu',
                              isOpsional: false,
                              isAbovePrimary: false,
                            ),
                            SizedBox(
                              height: sizeHeight * 0.015,
                            ),
                            Obx(() => ButtonTextfield(
                                  onPressed: () {
                                    controller.getDateFromUserExit();
                                  },
                                  namaIcon: iconKalender,
                                  scaleIcon: 25,
                                  hintText: DateFormat.yMMMMd()
                                      .format(controller
                                          .selectedTanggalPengeluaran.value)
                                      .toString(),
                                )),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              AlertContainer(
                content:
                    'Ingatt! Kamu harus bisa melakukan penghematan uang ya!',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: CustomButtonSimpan(
          onPressed: () {
            controller.saveTransaction();
            Get.back();
          },
        ),
      ),
    );
  }
}
