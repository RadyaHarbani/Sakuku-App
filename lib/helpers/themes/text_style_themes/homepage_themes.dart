import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

TextStyle bulanChipHomepage = GoogleFonts.poppins(
  color: primaryTextColorBlack,
  fontSize: figmaFontsize(13),
  fontWeight: FontWeight.w600,
);

TextStyle goodChipHomepage = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontSize: figmaFontsize(13),
  fontWeight: FontWeight.w600,
);

keuanganHomePage(bool green) {
  return GoogleFonts.poppins(
    color: green == true ? secondaryColor : filledTextfieldColor,
    letterSpacing: 1,
    fontSize: figmaFontsize(14),
    fontWeight: FontWeight.w600,
  );
}

rpHomePage(bool weight, bool height) {
  return GoogleFonts.poppins(
    fontWeight: weight ? FontWeight.bold : FontWeight.w600,
    height: height ? 4 : 2,
    fontSize: figmaFontsize(11),
    color: filledTextfieldColor.withOpacity(.7),
  );
}

moneyHomePage(bool size) {
  return GoogleFonts.poppins(
    fontSize: size ? figmaFontsize(30) : figmaFontsize(20),
    color: backgroundColor,
    fontWeight: FontWeight.bold,
  );
}

containerTittleHomePage(bool height) {
  return GoogleFonts.poppins(
    height: height ? 1.2 : 0,
    fontSize: figmaFontsize(16),
    fontWeight: FontWeight.bold,
  );
}

TextStyle containerDateHomePage = GoogleFonts.poppins(
    color: Colors.black.withOpacity(0.53),
    fontSize: figmaFontsize(11),
    fontWeight: FontWeight.w600);

TextStyle BudgetHomePage = GoogleFonts.poppins(
    fontSize: figmaFontsize(14), fontWeight: FontWeight.w600);

TextStyle chipHomePage = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: figmaFontsize(12),
    color: Colors.black.withOpacity(0.58));

moneyRemainderHomePage(bool red) {
  return GoogleFonts.poppins(
    color: red == true ? Colors.red : Color(0xFFE3B9B65),
    fontSize: figmaFontsize(13),
    fontWeight: FontWeight.w600,
  );
}

TextStyle moneyUsedHomePage = GoogleFonts.poppins(
  fontWeight: FontWeight.bold,
  fontSize: figmaFontsize(12),
);

TextStyle paydayHomePage = GoogleFonts.poppins(
  fontSize: figmaFontsize(11),
  fontWeight: FontWeight.w500,
);

TextStyle fiturHomePage = GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: figmaFontsize(9));

TextStyle hebatHomePage = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: figmaFontsize(16),
    color: Colors.white);

TextStyle hebatChipHomePage = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    height: 1.3,
    fontSize: figmaFontsize(13),
    color: Colors.white);

TextStyle goodHebatHomePage = GoogleFonts.poppins(
    fontWeight: FontWeight.bold, fontSize: 13, color: Colors.white);
