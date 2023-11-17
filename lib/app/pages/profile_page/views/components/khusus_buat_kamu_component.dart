import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/profile_page_themes.dart';

class KhususBuatKamuComponent extends StatelessWidget {
  const KhususBuatKamuComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth * 0.89,
      height: sizeHeight * 0.35,
      decoration: BoxDecoration(
        color: aboveBackgroundColor,
        borderRadius: defaulBorderRadius,
        boxShadow: defaultBoxShadow,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: sizeWidth * 0.06,
          vertical: sizeHeight * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Khusus Buat Kamu",
              style: titleKhususBuatKamu,
            ),
            //transaksi dicatat
            //tabungan yang tercapai
            //status keuangan
            SizedBox(
              height: sizeHeight * 0.025,
            ),
            Container(
              width: sizeWidth * 0.8,
              height: sizeHeight * 0.24,
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: sizeHeight * 0.11,
                            width: sizeWidth * 0.35,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 225, 135),
                              borderRadius: defaulBorderRadius,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Total\nTransaksi",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: figmaFontsize(12),
                                      height: 1.2,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('0',
                                      style: GoogleFonts.poppins(
                                        fontSize: figmaFontsize(20),
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: -15,
                            child: Image.asset(
                              iconNulis,
                              scale: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: sizeWidth * 0.02,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: sizeHeight * 0.11,
                            width: sizeWidth * 0.4,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 177, 199, 255),
                              borderRadius: defaulBorderRadius,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Tabungan\nTercapai",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: figmaFontsize(12),
                                      height: 1.2,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('0',
                                      style: GoogleFonts.poppins(
                                        fontSize: figmaFontsize(20),
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: -20,
                            child: Image.asset(
                              iconDanaDarurat,
                              scale: 8,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sizeHeight * 0.01,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: sizeHeight * 0.12,
                        width: sizeWidth * 0.8,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 222, 255, 230),
                          borderRadius: defaulBorderRadius,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Status Keuangan",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: figmaFontsize(12),
                                  height: 1.2,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('GOOD',
                                  style: GoogleFonts.poppins(
                                    fontSize: figmaFontsize(20),
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: -10,
                        right: -20,
                        child: Image.asset(
                          robotHome2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
