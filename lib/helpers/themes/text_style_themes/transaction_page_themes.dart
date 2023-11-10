import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

//All Transactions Page
TextStyle titleAllTransactionsStyle = GoogleFonts.poppins(
  color: primaryTextColorBlack,
  fontSize: figmaFontsize(17),
  fontWeight: FontWeight.bold,
);

//Alert Container Component
TextStyle textStyleAlert = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontSize: figmaFontsize(13),
  fontWeight: FontWeight.w600,
);

TextStyle alertContentTextStyle = GoogleFonts.poppins(
  height: 1.4,
  color: primaryTextColorBlack,
  fontSize: figmaFontsize(12),
  fontWeight: FontWeight.w600,
);

//Bottom Sheet Kategori Component
TextStyle titleBottomSheetKategori = GoogleFonts.poppins(
  fontSize: figmaFontsize(16),
  fontWeight: FontWeight.w600,
  color: primaryTextColorBlack,
);

TextStyle buttonBatalKategori = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontSize: figmaFontsize(16),
  fontWeight: FontWeight.w600,
);

TextStyle buttonPilihKategori = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontSize: figmaFontsize(16),
  fontWeight: FontWeight.w600,
);

//Button Kategori Component
TextStyle buttonKategoriTitle = GoogleFonts.poppins(
  fontSize: figmaFontsize(15),
  fontWeight: FontWeight.w600,
  color: primaryTextColorBlack,
);

TextStyle buttonKategoriSubtitle = GoogleFonts.poppins(
  height: 1,
  fontSize: figmaFontsize(11),
  fontWeight: FontWeight.w400,
  color: primaryTextColorBlack,
);

//Custom Appbar Widget Component
TextStyle customAppbarTitle = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontSize: figmaFontsize(17),
  fontWeight: FontWeight.w600,
);

//Custom Textfield Input Component
TextStyle prefixCustomTextfield = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontWeight: FontWeight.w600,
  fontSize: figmaFontsize(13),
);

TextStyle hintCustomTextfield = GoogleFonts.poppins(
  fontSize: figmaFontsize(20),
  fontStyle: FontStyle.italic,
  color: hintTextColor,
  fontWeight: FontWeight.w600,
);

TextStyle styleInputTextfield = GoogleFonts.poppins(
  color: primaryTextColorWhite,
  fontSize: figmaFontsize(20),
  fontWeight: FontWeight.w600,
);

//Text Title Textfield Component
titleTextTitleTextfield(bool isAbovePrimary) {
  GoogleFonts.poppins(
    color:
        isAbovePrimary == true ? primaryTextColorWhite : primaryTextColorBlack,
    fontSize: figmaFontsize(15),
    fontWeight: FontWeight.bold,
  );
}

subtitleTextTitleTextfield(bool isAbovePrimary) {
  GoogleFonts.poppins(
    color: isAbovePrimary == true
        ? primaryTextColorWhite.withOpacity(0.7)
        : primaryTextColorGrey.withOpacity(0.7),
    fontSize: figmaFontsize(11),
    fontWeight: FontWeight.w600,
  );
}

TextStyle bintangTextTitleTextfield = GoogleFonts.poppins(
  color: warningColor,
  fontStyle: FontStyle.italic,
  fontSize: figmaFontsize(11),
  fontWeight: FontWeight.w600,
);
