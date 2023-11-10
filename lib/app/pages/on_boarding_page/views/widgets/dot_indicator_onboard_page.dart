import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: sizeHeight * 0.006,
      width: isActive ? sizeWidth * 0.3 : sizeWidth * 0.16,
      decoration: BoxDecoration(
        borderRadius: defaulBorderRadius,
        color: isActive ? primaryColor : hintTextColor.withOpacity(0.3),
      ),
    );
  }
}
