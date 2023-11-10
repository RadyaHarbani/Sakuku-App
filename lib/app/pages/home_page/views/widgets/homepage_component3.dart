import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';

class HomePageComponentThree extends StatelessWidget {
  const HomePageComponentThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 36, vertical: 15),
      height: 181,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 47,
            decoration: BoxDecoration(
                color: thirdColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaksi Terakhir',
                  style: GoogleFonts.poppins(
                      fontSize: figmaFontsize(15), fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'KAMIS, 18 OKTOBER 2023',
                  style: GoogleFonts.poppins(
                      color: Colors.black.withOpacity(0.53),
                      fontSize: figmaFontsize(10),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Container(
                  height: 62,
                  width: 284,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 6),
                              child: Image.asset(
                                iconPemasukan,
                                height: 25,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Pemasukan ',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: figmaFontsize(11)),
                                ),
                                Text(
                                  'Gajian Kantor',
                                  style: GoogleFonts.poppins(
                                    fontSize: figmaFontsize(10),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          '2.000.000',
                          style: GoogleFonts.poppins(
                              fontSize: figmaFontsize(12),
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFE3B9B65)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
