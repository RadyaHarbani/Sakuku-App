import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/transaction_page_themes.dart';

class AlertContainer extends StatelessWidget {
  const AlertContainer({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: sizeHeight * 0.175,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          width: sizeWidth * 0.915,
          height: sizeHeight * 0.08,
          decoration: BoxDecoration(
            color: primaryTextColorWhite,
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
              Container(
                margin: EdgeInsets.only(left: 2),
                width: sizeWidth * 0.16,
                height: sizeHeight * 0.04,
                decoration: BoxDecoration(
                  color: warningColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Alert",
                    style: textStyleAlert,
                  ),
                ),
              ),
              SizedBox(
                width: sizeWidth * 0.04,
              ),
              Container(
                width: sizeWidth * 0.6,
                child: Text(
                  content,
                  style: alertContentTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
