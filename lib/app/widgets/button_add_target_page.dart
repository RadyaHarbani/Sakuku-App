import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

class ButtonAddTargetPage extends StatelessWidget {
  const ButtonAddTargetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 18),
      child: Container(
          height: 54,
          width: 324,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: primaryColor),
          child: Center(
            child: Text(
              'Lanjut',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: figmaFontsize(17),
                fontWeight: FontWeight.w600,
              ),
            ),
          )),
    );
  }
}
