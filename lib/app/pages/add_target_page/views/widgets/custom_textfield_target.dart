import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sakuku_app/helpers/converter/currency_format_flutter.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/add_target_page/add_target_page_themes.dart';

class CustomTextfieldTarget extends StatelessWidget {
  const CustomTextfieldTarget({
    super.key,
    required this.hintText,
    required this.isNumber,
  });

  final String hintText;
  final bool isNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      height: sizeHeight * 0.095,
      width: sizeWidth,
      child: TextField(
        keyboardType: isNumber == true ? TextInputType.number : null,
        decoration: InputDecoration(
          prefixIcon: isNumber == true
              ? Container(
                  width: 20,
                  height: 30,
                  child: Center(
                    child: Text('Rp.', style: prefixTextStyle),
                  ),
                )
              : null,
          filled: true,
          fillColor: filledTextfieldColor,
          hintText: hintText,
          hintStyle: hintTextStyle,
          enabledBorder: OutlineInputBorder(
            borderRadius: defaulBorderRadius,
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: defaulBorderRadius,
            borderSide: BorderSide(
              color: successColor,
            ),
          ),
        ),
        style: inputTextStyle,
        inputFormatters: isNumber == true
            ? [
                FilteringTextInputFormatter.digitsOnly,
                CurrencyFormatTextfield(),
              ]
            : null,
      ),
    );
  }
}
