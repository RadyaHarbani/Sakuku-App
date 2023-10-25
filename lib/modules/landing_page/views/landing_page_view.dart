import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/components/button_landing_page.dart';
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
                  Container(
                    width: 250,
                    child: Text(
                      "Apakah Kamu Punya Akun?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: figmaFontsize(20),
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        ButtonLandingPage(
                          buttonColor: fourthColor,
                          textButton: "Ya",
                          isBorder: false,
                        ),
                        SizedBox(width: 15),
                        ButtonLandingPage(
                          buttonColor: fourthColor,
                          textButton: "Tidak",
                          isBorder: true,
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
