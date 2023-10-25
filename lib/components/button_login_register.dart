import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';

class ButtonLoginRegister extends StatelessWidget {
  const ButtonLoginRegister({
    super.key,
    required this.onTap,
    required this.isEmailOrGoogle,
    required this.child,
    required this.isColor,
  });

  final Function onTap;
  final bool isEmailOrGoogle;
  final Widget child;
  final bool isColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap as void Function()?,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        width: double.infinity,
        height: isEmailOrGoogle ? 70 : 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isColor == true ? Color(0xFF375A5A) : Colors.transparent,
          border: isColor == false
              ? Border.all(
                  color: Color(0xFF375A5A),
                  width: 1.3,
                )
              : null,
        ),
        child: Center(
          child: isEmailOrGoogle
              ? Center(
                  child: Text(
                    "Loading...",
                    style: GoogleFonts.poppins(
                      color: isColor == true ? Colors.white : Color(0xFF375A5A),
                      fontSize: figmaFontsize(17),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              : child,
        ),
      ),
    );
  }
}
