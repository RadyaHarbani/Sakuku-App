import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

class ButtonKategori extends StatelessWidget {
  ButtonKategori({
    super.key,
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.subtitle, required this.iconSize,
  });

  final String icon;
  final String title;
  final String subtitle;
  final double iconSize;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: thirdColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    right: -5,
                    bottom: -5,
                    child: Image.asset(
                      icon,
                      width: iconSize,
                      height: iconSize,
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
                      fontSize: figmaFontsize(15),
                      fontWeight: FontWeight.w600,
                      color: primaryTextColorBlack,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      height: 1,
                      fontSize: figmaFontsize(11),
                      fontWeight: FontWeight.w400,
                      color: primaryTextColorBlack,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: hintTextColor,
              shape: BoxShape.circle,
            ),
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: isSelected == true ? successColor : Colors.transparent,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
