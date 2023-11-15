import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/transaction_page/controllers/transaction_page_controller.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/button_textfield.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/custom_appbar_widget.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/custom_button_simpan.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/text_title_textfield.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/textfield_catatan.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/alert_container.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/app/pages/transaction_page/views/widgets/custom_textfield_input.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';

class IncomingTransactionPageView extends GetView<TransactionPageController> {
  const IncomingTransactionPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: CustomAppbarWidget(
          angle: pi / 2,
          color: successColor,
          title: "Pemasukan",
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
                              controller.nominalPemasukanController,
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
                              title: 'Sumber',
                              subtitle: 'Tulis sumber pemasukanmu',
                              isOpsional: false,
                              isAbovePrimary: false,
                            ),
                            SizedBox(
                              height: sizeHeight * 0.015,
                            ),
                            TextfieldCatatan(
                              inputType: TextInputType.text,
                              hintText: 'Cth : "Dari Gaji Pekerjaan"',
                              namaIcon: iconSumberPemasukan,
                              scale: 20,
                              controller: controller.sumberPemasukanController!,
                            ),
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
                                  controller.catatanPemasukanController!,
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
                            ButtonTextfield(
                              onPressed: () {
                                controller.getDateFromUser();
                              },
                              namaIcon: iconKalender,
                              scaleIcon: 25,
                              hintText: '20, November 2022',
                            ),
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
      floatingActionButton: Obx(() => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: CustomButtonSimpan(
              onPressed: () {
                controller.saveTransaction();
              },
            ),
          )),
    );
  }
}
