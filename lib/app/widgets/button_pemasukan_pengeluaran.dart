import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

class ButtonPemasukanPengeluaran extends StatelessWidget {
  const ButtonPemasukanPengeluaran({
    super.key,
    required this.angle,
    required this.color,
    required this.title, required this.onPressed,
  });

  final double angle;
  final Color color;
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
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
          Transform.rotate(
            angle: angle,
            child: Container(
              width: 23,
              height: 23,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 13,
                color: backgroundColor,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              color: primaryColor,
              fontSize: figmaFontsize(14),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
