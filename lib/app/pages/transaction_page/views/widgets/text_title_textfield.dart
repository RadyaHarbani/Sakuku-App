import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/transaction_page_themes.dart';

class TextTitleTextfield extends StatelessWidget {
  const TextTitleTextfield({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isOpsional,
    required this.isAbovePrimary,
  });

  final String title;
  final String subtitle;
  final bool isOpsional;
  final bool isAbovePrimary;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: titleTextTitleTextfield(isAbovePrimary),
            ),
            SizedBox(
              height: sizeHeight * 0.003,
            ),
            RichText(
              text: TextSpan(
                text: subtitle,
                style: subtitleTextTitleTextfield(isAbovePrimary),
                children: [
                  TextSpan(
                    text: "*",
                    style: GoogleFonts.poppins(
                      color: warningColor,
                      fontSize: figmaFontsize(11),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        isOpsional == true
            ? Text(
                "opsional*",
                style: bintangTextTitleTextfield,
              )
            : Container(),
      ],
    );
  }
}
