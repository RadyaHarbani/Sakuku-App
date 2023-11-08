import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/app/widgets/alert_container.dart';
import 'package:sakuku_app/app/widgets/bottom_sheet_kategori.dart';
import 'package:sakuku_app/app/widgets/custom_textfield_input.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/app/pages/incoming_transaction_page/controllers/incoming_transaction_page_controller.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';

class IncomingTransactionPageView extends GetView<IncomingTransactionPageController> {
  const IncomingTransactionPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: 4.7,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: warningColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 10,
                  color: backgroundColor,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Pengeluaran",
              style: GoogleFonts.poppins(
                color: backgroundColor,
                fontSize: figmaFontsize(17),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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
            color: backgroundColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.snackbar(
                "Maaf...",
                "Fitur ini belum tersedia",
                backgroundColor: backgroundColor,
              );
            },
            icon: Icon(
              Icons.more_vert_rounded,
              size: 18,
              color: backgroundColor,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          SizedBox(
            width: sizeWidth,
            height: sizeHeight * 0.88,
            child: Stack(
              fit: StackFit.loose,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 15,
                        bottom: 35,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Masukkan Nominal Anda",
                              style: GoogleFonts.poppins(
                                color: backgroundColor,
                                fontSize: figmaFontsize(15),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextfieldInput(),
                          SizedBox(
                            height: 20,
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
                                height: 60,
                              ),
                              Text(
                                "Kategori",
                                style: GoogleFonts.poppins(
                                  color: primaryColor,
                                  fontSize: figmaFontsize(15),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Get.bottomSheet(
                                    BottomSheetKategori(),
                                    backgroundColor: backgroundColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    isScrollControlled: true,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: backgroundColor,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 16,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  elevation: 0,
                                  side: BorderSide(
                                    color: primaryColor.withOpacity(0.5),
                                    width: 1.5,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/icons/icon_kategori.png',
                                          scale: 25,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Pilih Kategori",
                                          style: GoogleFonts.poppins(
                                            fontStyle: FontStyle.italic,
                                            color: hintTextColor,
                                            fontSize: figmaFontsize(16),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Transform.rotate(
                                      angle: pi / 2,
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 15,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Catatan",
                                style: GoogleFonts.poppins(
                                  color: primaryTextColorBlack,
                                  fontSize: figmaFontsize(15),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                obscureText: false,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 17),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Image.asset(
                                      iconNulis,
                                      scale: 20,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: primaryColor.withOpacity(0.5),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                      width: 1.5,
                                    ),
                                  ),
                                  hintText: "cth: Belinya Dimana?",
                                  hintStyle: GoogleFonts.poppins(
                                    fontStyle: FontStyle.italic,
                                    fontSize: figmaFontsize(16),
                                    color: hintTextColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                style: GoogleFonts.poppins(
                                  color: primaryTextColorBlack,
                                  fontSize: figmaFontsize(16),
                                  fontWeight: FontWeight.w600,
                                ),
                                cursorColor: primaryTextColorBlack,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Tanggal",
                                style: GoogleFonts.poppins(
                                  color: primaryTextColorBlack,
                                  fontSize: figmaFontsize(15),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: backgroundColor,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 16,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  elevation: 0,
                                  side: BorderSide(
                                    color: primaryColor.withOpacity(0.5),
                                    width: 1.5,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      iconKota,
                                      scale: 20,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Kapan Kamu Dapat?",
                                      style: GoogleFonts.poppins(
                                        fontStyle: FontStyle.italic,
                                        color: hintTextColor,
                                        fontSize: figmaFontsize(16),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: sizeWidth,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Simpan",
                                    style: GoogleFonts.poppins(
                                      color: backgroundColor,
                                      fontSize: figmaFontsize(16),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: fourthColor,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 16,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
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
        ],
      ),
    );
  }
}
