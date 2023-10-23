import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: generalBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SvgPicture.asset(
            'assets/logos/logo_horizontal.svg',
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 30,
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                      'assets/images/landing_images/landing_image1.png'),
                ),
                SizedBox(height: 23),
                Image.asset('assets/images/landing_images/landing_image2.png'),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 214,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 14,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Apakah Kamu Punya",
                    style: GoogleFonts.poppins(
                      fontSize: figmaFontsize(20),
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Akun?",
                    style: GoogleFonts.poppins(
                      height: 1.3,
                      fontSize: figmaFontsize(20),
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed('/login-page');
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(13),
                              backgroundColor: fourthColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: Text(
                              "Ya",
                              style: GoogleFonts.poppins(
                                fontSize: figmaFontsize(17),
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed('/register-page');
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(13),
                              backgroundColor: Colors.transparent,
                              side: BorderSide(
                                color: fourthColor,
                                width: 2,
                              ),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: Text(
                              "Tidak",
                              style: GoogleFonts.poppins(
                                fontSize: figmaFontsize(17),
                                fontWeight: FontWeight.bold,
                                color: fourthColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
