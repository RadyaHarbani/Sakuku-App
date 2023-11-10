import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/landing_page_themes.dart';

class ButtonLandingPage extends StatelessWidget {
  const ButtonLandingPage({
    super.key,
    required this.buttonColor,
    required this.isBorder,
    required this.textButton,
    required this.onPressed,
  });

  final Function onPressed;
  final Color buttonColor;
  final String textButton;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed as void Function()?,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(13),
          backgroundColor: isBorder == true ? Colors.transparent : buttonColor,
          elevation: 0,
          side: BorderSide(
            color: isBorder == true ? buttonColor : Colors.transparent,
            width: isBorder == true ? 2 : 0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          textButton,
          style: textButtonLandingComponent(
            isBorder,
            buttonColor,
          ),
        ),
      ),
    );
  }
}
