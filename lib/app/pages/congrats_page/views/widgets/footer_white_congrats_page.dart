import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';

class FooterWhiteCongratsPage extends StatelessWidget {
  const FooterWhiteCongratsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        footerWhite,
        width: sizeWidth,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
