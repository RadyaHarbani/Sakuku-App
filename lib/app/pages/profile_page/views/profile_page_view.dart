import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/profile_page_themes.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          "Profil Kamu",
          style: titleAppbarProfile,
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: sizeHeight * 0.13,
                width: sizeWidth,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: sizeWidth * 0.06,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: sizeWidth * 0.2,
                        height: sizeHeight * 0.15,
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: sizeWidth * 0.04,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Radya Harbani",
                            style: userNameProfile,
                          ),
                          Text(
                            "radya.i4m@gmail.com",
                            style: userEmailProfile,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: sizeHeight * 0.08,
              ),
              Expanded(
                child: Container(
                  color: backgroundColor,
                ),
              ),
            ],
          ),
          Positioned(
            top: sizeHeight * 0.14,
            left: sizeWidth * 0.055,
            child: Container(
              width: sizeWidth * 0.89,
              height: sizeHeight * 0.15,
              decoration: BoxDecoration(
                color: aboveBackgroundColor,
                borderRadius: defaulBorderRadius,
                boxShadow: defaultBoxShadow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
