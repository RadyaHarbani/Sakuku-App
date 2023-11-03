import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';

class CustomTextfieldInput extends StatelessWidget {
  const CustomTextfieldInput({
    super.key,
    required this.keyboardType,
    required this.isPassword,
    required this.prefixIcon,
    required this.hintText,
    this.inputFormatters, required this.controller,
  });

  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final Widget prefixIcon;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 18),
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: softGreyColor.withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.green,
            width: 1.5,
          ),
        ),
        hintText: "0",
        hintStyle: GoogleFonts.poppins(
          fontSize: figmaFontsize(20),
          color: generalBackgroundColor.withOpacity(0.5),
          fontWeight: FontWeight.bold,
        ),
      ),
      style: GoogleFonts.poppins(
        color: generalBackgroundColor,
        fontSize: figmaFontsize(20),
        fontWeight: FontWeight.w600,
      ),
      inputFormatters: inputFormatters,
      cursorColor: generalBackgroundColor,
    );
  }
}