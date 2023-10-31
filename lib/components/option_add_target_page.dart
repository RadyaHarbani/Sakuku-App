import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';

class OptionAddTarget extends StatelessWidget {
  const OptionAddTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 78,
          width: 81,
          color: Colors.grey,
          padding: EdgeInsets.only(bottom: 10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Belanja',
              style: GoogleFonts.poppins(fontSize: 12),
            ),
          ),
        ),
        Positioned(
            top: -15,
            left: 0,
            right: 0,
            child: Container(
              width: 60,
              height: 60,
              child: Image.asset(
                iconBelanja,
              ),
            )),
      ],
    );
  }
}
