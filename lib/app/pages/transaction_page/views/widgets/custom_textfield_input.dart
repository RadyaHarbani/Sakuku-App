import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/app/pages/transaction_page/controllers/transaction_page_controller.dart';
import 'package:sakuku_app/helpers/converter/currency_format_flutter.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/transaction_page_themes.dart';

class CustomTextfieldInput extends StatelessWidget {
  CustomTextfieldInput({super.key, required this.controllerNominal});
  final controller = Get.put(TransactionPageController());

  final TextEditingController? controllerNominal;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 18),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 10,
            top: 10,
            bottom: 10,
          ),
          child: Container(
            width: 60,
            decoration: BoxDecoration(
              color: filledTextfieldColor.withOpacity(0.1),
              borderRadius: defaulBorderRadius,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  iconBenderaIndonesia,
                  scale: 25,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Rp",
                  style: GoogleFonts.poppins(
                    color: backgroundColor,
                    fontWeight: FontWeight.w600,
                    fontSize: figmaFontsize(13),
                  ),
                ),
              ],
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: defaulBorderRadius,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: filledTextfieldColor.withOpacity(0.3),
          ),
          borderRadius: defaulBorderRadius,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: defaulBorderRadius,
          borderSide: BorderSide(
            color: Colors.green,
            width: 1.5,
          ),
        ),
        hintText: "Rp. 0",
        hintStyle: hintCustomTextfield,
      ),
      style: styleInputTextfield,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CurrencyFormatTextfield(),
      ],
      controller: controllerNominal,
      cursorColor: backgroundColor,
    );
  }
}
