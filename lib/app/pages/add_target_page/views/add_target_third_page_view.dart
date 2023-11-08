import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/app/widgets/button_add_target_page.dart';
import 'package:sakuku_app/app/widgets/textfield_add_target_page.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';

class AddTargetThirdPageView extends StatelessWidget {
  const AddTargetThirdPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              size: 22,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 5),
              height: 148,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '75%',
                    style: GoogleFonts.poppins(
                        color: secondaryColor,
                        fontSize: figmaFontsize(11),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Berapa total uang yang harus kamu kumpulkan?',
                    style: GoogleFonts.poppins(
                        fontSize: figmaFontsize(15),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '*Wajib kamu isi',
                    style: GoogleFonts.poppins(
                        color: warningColor,
                        fontSize: figmaFontsize(11),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 26),
                  TextFieldAddTarget(),
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(footerTarget),
                LinearPercentIndicator(
                    padding: EdgeInsets.zero,
                    animation: true,
                    animateFromLastPercent: true,
                    animationDuration: 1000,
                    lineHeight: 8,
                    percent: 0.75,
                    progressColor: Color(0xFF00E7B1)),
                InkWell(
                    onTap: () => Get.toNamed(Routes.ADD_TARGET_fOURTH_PAGE),
                    child: ButtonAddTargetPage()),
              ],
            )
          ],
        ));
  }
}
