
import 'package:flutter/material.dart';

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
      height: 5,
      width: isActive ? 115 : 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isActive
            ? Color.fromRGBO(57, 62, 70, 1)
            : Color.fromRGBO(150, 150, 150, 34),
      ),
    );
  }
}
