import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/on_boarding_page_themes.dart';

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
          width: sizeWidth,
          fit: BoxFit.fitWidth,
        ),
        Spacer(),
        Container(
          width: sizeWidth * 0.79,
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: titleOnboardingContent,
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: descOnboardingContent,
              ),
            ],
          ),
        ),
        Spacer(),
        Spacer()
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
