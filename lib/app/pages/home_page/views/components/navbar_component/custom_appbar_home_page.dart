import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/app/pages/home_page/controllers/home_page_controller.dart';
import 'package:sakuku_app/app/pages/login_page/controllers/login_page_controller.dart';
import 'package:sakuku_app/app/pages/register_page/controllers/register_page_controller.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({super.key});
  final controllerLoginPage = Get.put(LoginPageController());
  final controllerRegisterPage = Get.put(RegisterPageController());
  final controllerHomePage = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: AppBar(
              backgroundColor: backgroundColor,
              elevation: 0,
              title: SvgPicture.asset(
                'assets/logos/logo_horizontal.svg',
                width: 90,
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: controllerHomePage.showTitle.value ? 0 : 1,
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
                      backgroundImage: NetworkImage(
                        FirebaseAuth.instance.currentUser?.photoURL ??
                            'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png',
                      ),
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
                        Builder(
                          builder: (context) {
                            if (FirebaseAuth.instance.currentUser?.providerData
                                    .first.providerId ==
                                'google.com') {
                              return Text(
                                '${FirebaseAuth.instance.currentUser?.displayName} 👋',
                                style: GoogleFonts.poppins(
                                  fontSize: figmaFontsize(16),
                                  height: 1.2,
                                  fontWeight: FontWeight.w600,
                                  color: fourthColor,
                                ),
                              );
                            } else {
                              return Text(
                                '${controllerHomePage.userFullName.value} 👋',
                                style: GoogleFonts.poppins(
                                  fontSize: figmaFontsize(16),
                                  height: 1.2,
                                  fontWeight: FontWeight.w600,
                                  color: fourthColor,
                                ),
                              );
                            }
                          },
                        )
                      ],
                    ),
                  ],
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 13),
                    child: CircleAvatar(
                      backgroundColor: abovePrimaryColor,
                      radius: 22,
                      child: IconButton(
                        onPressed: () {
                          controllerLoginPage.signOut();
                        },
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
      ),
    );
  }
}
