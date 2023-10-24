import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';

//On Boarding Content
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
        Spacer(),
        Image.asset(
          image,
          width: 200,
        ),
        Spacer(),
        Container(
          width: 260,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SizedBox(
            width: 290,
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
        Spacer(),
      ],
    );
  }
}

//List On Boarding Content
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

//Dot Indicator
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
      height: 4,
      width: isActive ? 12 : 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive
            ? Color.fromARGB(255, 0, 139, 128)
            : Color.fromARGB(255, 0, 139, 128).withOpacity(0.5),
      ),
    );
  }
}
