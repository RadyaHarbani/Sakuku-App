import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
        ),
        SizedBox(height: 30),
        Container(
          width: 300,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              height: 1.3,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SizedBox(
            width: 270,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Color.fromRGBO(98, 98, 98, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class OnBoardingContentList {
  final List<OnBoardingContent> list_on_board = [
    OnBoardingContent(
      image: onboardingImage1,
      title: "Mulailah Perilaku Hemat Dari Sekarang",
      description:
          "Lakukan komitmen dengan aplikasi Sakuku, aplikasi pengelola keuangan",
    ),
    OnBoardingContent(
      image: onboardingImage2,
      title: "Buat Targetmu Dengan Aplikasi Sakuku!",
      description: "Aplikasi Sakuku akan membantumu memantau keuanganmu",
    ),
    OnBoardingContent(
      image: onboardingImage3,
      title: "Hemat Akan Membuat Hidupmu Teratur!",
      description:
          "Hemat pangkal kaya, mulai sekarang untuk komitmen dengan dirimu",
    ),
  ];
}
