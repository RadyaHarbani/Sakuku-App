import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

//Add Target Page
TextStyle percentTextStyle = GoogleFonts.poppins(
  color: secondaryColor,
  fontSize: figmaFontsize(12),
  fontWeight: FontWeight.w600,
);

TextStyle titleTextStyle = GoogleFonts.poppins(
  fontSize: figmaFontsize(16),
  fontWeight: FontWeight.w700,
);

TextStyle subTitleTextStyle = GoogleFonts.poppins(
  color: warningColor,
  fontSize: figmaFontsize(12),
  fontWeight: FontWeight.w600,
);

//Button Lanjut Component
TextStyle buttonLanjutStyle = GoogleFonts.poppins(
  color: Colors.white,
  fontSize: figmaFontsize(17),
  fontWeight: FontWeight.w600,
);

itemKategoriTextStyle(bool isClicked) {
  return GoogleFonts.poppins(
    fontSize: figmaFontsize(14),
    fontWeight: FontWeight.w600,
    color: isClicked == true ? primaryTextColorWhite : primaryTextColorBlack,
  );
}

//Button Kalender Component
TextStyle tanggalKalenderStyle = GoogleFonts.poppins(
  fontStyle: FontStyle.italic,
  fontSize: figmaFontsize(14),
  fontWeight: FontWeight.w600,
  color: hintTextColor,
);

//Custom Textfield Target Component
TextStyle prefixTextStyle = GoogleFonts.poppins(
  fontSize: figmaFontsize(14),
  fontWeight: FontWeight.w600,
  color: primaryTextColorBlack,
);

TextStyle hintTextStyle = GoogleFonts.poppins(
  fontStyle: FontStyle.italic,
  fontSize: figmaFontsize(14),
  fontWeight: FontWeight.w600,
  color: hintTextColor,
);

TextStyle inputTextStyle = GoogleFonts.poppins(
  fontSize: figmaFontsize(15),
  fontWeight: FontWeight.w600,
  color: primaryTextColorBlack,
);
