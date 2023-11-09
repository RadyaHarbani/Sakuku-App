import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/transaction_page_themes.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({
    super.key,
    required this.angle,
    required this.color,
    required this.title,
  });

  final double angle;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: angle,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 10,
                color: backgroundColor,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: customAppbarTitle,
          ),
        ],
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      toolbarHeight: 60,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 18,
          color: backgroundColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Get.snackbar(
              "Maaf...",
              "Fitur ini belum tersedia",
              backgroundColor: backgroundColor,
            );
          },
          icon: Icon(
            Icons.more_vert_rounded,
            size: 18,
            color: backgroundColor,
          ),
        ),
      ],
    );
  }
}
