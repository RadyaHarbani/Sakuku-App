import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';
import 'package:sakuku_app/modules/login_page/controllers/login_page_controller.dart';

class TextfieldLoginRegister extends StatelessWidget {
  TextfieldLoginRegister({
    super.key,
    this.fieldController,
    required this.obscureText,
    required this.prefixIcon,
    required this.hintText,
    this.keyboardType,
    this.suffixIcon,
    this.validator,
  });
  final controller = Get.put(LoginPageController());

  final TextEditingController? fieldController;
  final bool obscureText;
  final Icon prefixIcon;
  final String hintText;
  final TextInputType? keyboardType;
  final IconButton? suffixIcon;
  final Function? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fieldController,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16),
        filled: true,
        fillColor: softGreyColor,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
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
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          fontSize: figmaFontsize(14),
        ),
        suffixIcon: suffixIcon,
      ),
      cursorColor: Colors.black,
      validator: validator as String? Function(String?)?,
    );
  }
}
