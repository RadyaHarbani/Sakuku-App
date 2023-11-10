import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/login_register_page_themes.dart';

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
        height: isEmailOrGoogle ? sizeHeight * 0.09 : sizeHeight * 0.07,
        decoration: BoxDecoration(
          borderRadius: defaulBorderRadius,
          color: isColor == true ? primaryColor : Colors.transparent,
          border: isColor == false
              ? Border.all(
                  color: primaryColor,
                  width: 1.3,
                )
              : null,
        ),
        child: Center(
          child: isEmailOrGoogle
              ? Center(
                  child: Text(
                    "Loading...",
                    style: isLoadingButtonText(isColor),
                  ),
                )
              : child,
        ),
      ),
    );
  }
}
