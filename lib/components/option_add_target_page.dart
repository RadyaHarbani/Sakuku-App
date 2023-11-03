import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';

class OptionAddTarget extends StatelessWidget {
  const OptionAddTarget({
    super.key,
    required this.width,
    this.image,
    required this.text,
    required this.padding
  });

  final double width;
  final String? image;
  final String text;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 78,
          width: width,
          color: Colors.grey,
          padding: padding,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              text,
              style: GoogleFonts.poppins(fontSize: 12),
            ),
          ),
        ),
        Positioned(
            top: -15,
            left: 0,
            right: 0,
            child: Container(
                width: 60, height: 60, child: Image.asset(image!))),
      ],
    );
  }
}

// class OptionAddTargetList {
//   final List<OptionAddTarget> list_option_add_target = [
//     OptionAddTarget(
//         width: 81,
//         text: 'Belanja',
//         padding: EdgeInsets.only(bottom: 5),
//         image: iconBelanja),
//     OptionAddTarget(
//         width: 81,
//         text: 'Belanja',
//         padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
//         image: iconBelanja),
//     OptionAddTarget(
//         width: 81,
//         text: 'Belanja',
//         padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
//         image: iconBelanja)
//   ];
// }
