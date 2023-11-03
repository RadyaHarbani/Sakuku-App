import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/components/alert_container.dart';
import 'package:sakuku_app/components/custom_textfield_input.dart';
import 'package:sakuku_app/helpers/currency_format_flutter.dart';
import 'package:sakuku_app/helpers/themes.dart';
import 'package:sakuku_app/modules/transaction_entry_page/controllers/transaction_entry_page_controller.dart';

class TransactionEntryPageView extends GetView<TransactionEntryPageController> {
  const TransactionEntryPageView({super.key});

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
                  color: anotherGreen,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 10,
                  color: generalBackgroundColor,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Pemasukan",
              style: GoogleFonts.poppins(
                color: generalBackgroundColor,
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
            color: generalBackgroundColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.snackbar(
                "Maaf...",
                "Fitur ini belum tersedia",
                backgroundColor: generalBackgroundColor,
              );
            },
            icon: Icon(
              Icons.more_vert_rounded,
              size: 18,
              color: generalBackgroundColor,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Masukkan Nominal Anda",
                        style: GoogleFonts.poppins(
                          color: generalBackgroundColor,
                          fontSize: figmaFontsize(16),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextfieldInput(
                      keyboardType: TextInputType.number,
                      isPassword: false,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 10,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Container(
                          width: 60,
                          decoration: BoxDecoration(
                            color: softGreyColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                iconBenderaIndonesia,
                                scale: 25,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Rp",
                                style: GoogleFonts.poppins(
                                  color: generalBackgroundColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: figmaFontsize(13),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      hintText: '0',
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CurrencyFormatTextfield(),
                      ],
                      controller: controller.nominalController,
                    ),
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
                    color: generalBackgroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          "Kategori",
                          style: GoogleFonts.poppins(
                            color: primaryColor,
                            fontSize: figmaFontsize(16),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: generalBackgroundColor,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                            side: BorderSide(
                              color: primaryColor,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/icon_kategori.png',
                                scale: 25,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Pemasukan",
                                style: GoogleFonts.poppins(
                                  color: generalBackgroundColor,
                                  fontSize: figmaFontsize(17),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          AlertContainer(
            content: 'Ingatt! Kamu harus bisa melakukan penghematan uang ya!',
          ),
        ],
      ),
    );
  }
}
