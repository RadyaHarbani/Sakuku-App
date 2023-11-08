import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Color(0xFF0F110E),
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Or",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: primaryColor,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: Color(0xFF0F110E),
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
