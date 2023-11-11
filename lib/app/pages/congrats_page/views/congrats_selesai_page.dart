import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/congrats_page/controllers/congrats_page_controller.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/congrats_page_themes.dart';

class CongratsSelesaiPage extends GetView<CongratsPageController> {
  const CongratsSelesaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              size: 22,
              color: aboveBackgroundColor,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.1),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: sizeHeight * 0.02),
                  width: sizeWidth * 0.79,
                  child: Text('Selesai!',
                      textAlign: TextAlign.center, style: titleChipCongratsPage),
                ),
                Text('Kamu berhasil komitmen dengan dirimu sendiri:)',
                    textAlign: TextAlign.center, style: textCongratsPage(true)),
              ],
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              footerBlack,
              width: sizeWidth,
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
