import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';

class HomePageComponentFour extends StatelessWidget {
  const HomePageComponentFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 36, vertical: 15),
      height: 225,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Fitur Menarik',
                  style: GoogleFonts.poppins(
                      fontSize: figmaFontsize(15), fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  height: 39,
                  width: sizeWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: anotherGreen),
                  child: Row(
                    children: [
                      Transform.rotate(
                        angle: pi,
                        child: Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.info_outline,
                            size: 15,
                            color: generalBackgroundColor,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Sekarang kamu bisa menambahkan target apa yang ingin kamu capai disini, kami akan membantu :)',
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: figmaFontsize(8)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 84,
                  width: 284,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 6),
                          child: Image.asset(
                            iconTarget,
                            height: 44,
                          ),
                        ),
                        Text(
                          'Target Tabungan',
                          style: GoogleFonts.poppins(
                            fontSize: figmaFontsize(15),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
