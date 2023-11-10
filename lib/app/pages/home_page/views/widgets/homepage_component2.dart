import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';

class HomePageComponentTwo extends StatelessWidget {
  const HomePageComponentTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 36, vertical: 15),
      height: 124,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: fourthColor,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hebat!',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: figmaFontsize(15),
                    color: Colors.white),
              ),
              Expanded(
                child: Text(
                  'Kamu bisa mengatur \n keuanganmu.',
                  maxLines: 2,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                      fontSize: figmaFontsize(12),
                      color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: sizeWidth / 3,
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  'Good:)',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white),
                ),
              )
            ],
          ),
          Stack(
            children: [
              CircleAvatar(

              ),
              Image.asset(robotHome2)
            ],
          )
        ],
      ),
    );
  }
}
