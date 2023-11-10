import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';

class HomePageComponentOne extends StatelessWidget {
  const HomePageComponentOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 36, vertical: 15),
      height: 244,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 62.96,
            decoration: BoxDecoration(
                color: thirdColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(
                  'Keuangan Bulan Ini (bulanan)',
                  style: GoogleFonts.poppins(
                      fontSize: figmaFontsize(15), fontWeight: FontWeight.bold),
                  maxLines: 2,
                )),
                Image.asset(
                  iconKeuangan,
                  height: 28.19,
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
                  'OKTOBER 2023',
                  style: GoogleFonts.poppins(
                      color: Colors.black.withOpacity(0.53),
                      fontSize: figmaFontsize(10),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Container(
                  height: 118,
                  width: 284,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Budget',
                              style: GoogleFonts.poppins(
                                  fontSize: figmaFontsize(13),
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Text(
                                  'sisa ',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: figmaFontsize(11),
                                      color: Colors.black.withOpacity(0.58)),
                                ),
                                Text(
                                  '-1.000',
                                  style: GoogleFonts.poppins(
                                      fontSize: figmaFontsize(12),
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red),
                                ),
                              ],
                            )
                          ],
                        ),
                        LinearPercentIndicator(
                          barRadius: Radius.circular(6),
                          padding: EdgeInsets.zero,
                          animation: true,
                          animateFromLastPercent: true,
                          animationDuration: 1000,
                          lineHeight: 8,
                          percent: 0.1,
                          progressColor: Color(0xFF00E7B1),
                        ),
                        Row(
                          children: [
                            Text(
                              'terpakai ',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: figmaFontsize(11),
                                  color: Colors.black.withOpacity(0.58)),
                            ),
                            Text(
                              'Rp1.000.000 ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: figmaFontsize(11),
                              ),
                            ),
                            Text(
                              '/ ',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: figmaFontsize(11),
                                  color: Colors.black.withOpacity(0.58)),
                            ),
                            Text(
                              'Rp2.000.000',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: figmaFontsize(11),
                                  color: Colors.black.withOpacity(0.58)),
                            ),
                          ],
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
