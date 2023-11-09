import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sakuku_app/app/pages/add_target_page/views/widgets/button_target_lanjut.dart';
import 'package:sakuku_app/app/pages/add_target_page/views/widgets/custom_textfield_target.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/add_target_page/add_target_page_themes.dart';

class AddTargetThirdPageView extends StatelessWidget {
  const AddTargetThirdPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.close,
            size: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 5),
              height: sizeHeight * 0.13,
              width: sizeWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '75% selesai',
                    style: percentTextStyle,
                  ),
                  Text(
                    'Berapa total uang yang kamu kumpulkan?',
                    style: titleTextStyle,
                  ),
                  Text(
                    '*Wajib kamu isi',
                    style: subTitleTextStyle,
                  ),
                ],
              ),
            ),
            CustomTextfieldTarget(
              hintText: 'Masukkan Nominal Anda',
              isNumber: true,
            ),
            SizedBox(
              height: sizeHeight * 0.235,
            ),
            Container(
              height: sizeHeight * 0.39,
              width: sizeWidth,
              child: Column(
                children: [
                  Image.asset(footerTarget, width: sizeWidth),
                  Container(
                    width: sizeWidth,
                    child: LinearPercentIndicator(
                      padding: EdgeInsets.zero,
                      animation: false,
                      animateFromLastPercent: false,
                      lineHeight: sizeHeight * 0.013,
                      percent: 0.75,
                      progressColor: fourthColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ButtonTargetLanjut(
                      routeName: Routes.ADD_TARGET_fOURTH_PAGE,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
