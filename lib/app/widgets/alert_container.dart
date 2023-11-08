import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

class AlertContainer extends StatelessWidget {
  const AlertContainer({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          width: 330,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  color: warningColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Alert",
                    style: GoogleFonts.poppins(
                      color: backgroundColor,
                      fontSize: figmaFontsize(13),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 230,
                child: Text(
                  content,
                  style: GoogleFonts.poppins(
                    height: 1.4,
                    color: primaryColor,
                    fontSize: figmaFontsize(12),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
