import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';
import 'package:sakuku_app/modules/home_page/controllers/home_page_controller.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({super.key});
  final controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: AppBar(
                backgroundColor: generalBackgroundColor,
                elevation: controller.showTitle.value ? 0 : 0.3,
                title: SvgPicture.asset(
                  'assets/logos/logo_horizontal.svg',
                  width: 90,
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: controller.showTitle.value ? 0 : 1,
              duration: Duration(milliseconds: 500),
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: AppBar(
                  backgroundColor: primaryColor,
                  elevation: 0,
                  title: Row(
                    children: [
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: softGreyColor,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Halo Bro,',
                            style: GoogleFonts.poppins(
                              fontSize: figmaFontsize(12),
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Radya Harbani 👋',
                            style: GoogleFonts.poppins(
                              fontSize: figmaFontsize(16),
                              height: 1.2,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(13, 223, 162, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 13),
                      child: CircleAvatar(
                        backgroundColor: anotherPrimaryColor,
                        radius: 22,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),);
  }
}
