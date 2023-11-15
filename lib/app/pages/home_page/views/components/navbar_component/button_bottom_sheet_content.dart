import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

class ButtonBottomSheetContent extends StatelessWidget {
  const ButtonBottomSheetContent({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  final String imageAsset;
  final String title;
  final String subtitle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.8,
        backgroundColor: primaryTextColorWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: thirdColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                right: -5,
                bottom: -5,
                child: Image.asset(
                  imageAsset,
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  color: primaryTextColorBlack,
                  fontSize: figmaFontsize(14),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.poppins(
                  color: primaryTextColorBlack.withOpacity(0.6),
                  fontSize: figmaFontsize(10),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
