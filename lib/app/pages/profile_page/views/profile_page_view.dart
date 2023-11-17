import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/profile_page/controllers/profile_page_controller.dart';
import 'package:sakuku_app/app/pages/profile_page/views/components/informasi_pengaturan_component.dart';
import 'package:sakuku_app/app/pages/profile_page/views/components/khusus_buat_kamu_component.dart';
import 'package:sakuku_app/app/pages/profile_page/views/components/kontak_bantuan_component.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/profile_page_themes.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  final controllerProfile = Get.put(ProfilePageController());
  ProfilePageView({super.key});

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
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: sizeHeight * 0.11,
                    width: sizeWidth,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: sizeWidth * 0.06,
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(
                              FirebaseAuth.instance.currentUser?.photoURL ??
                                  'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png',
                            ),
                          ),
                          SizedBox(
                            width: sizeWidth * 0.04,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FirebaseAuth.instance.currentUser?.providerData
                                          .first.providerId ==
                                      'google.com'
                                  ? Text(
                                      FirebaseAuth
                                              .instance.currentUser?.displayName
                                              .toString() ??
                                          '',
                                      style: userNameProfile,
                                    )
                                  : Text(
                                      controller.userFullName.value.toString(),
                                      style: userNameProfile,
                                    ),
                              FirebaseAuth.instance.currentUser?.providerData
                                          .first.providerId ==
                                      'google.com'
                                  ? Text(
                                      FirebaseAuth.instance.currentUser?.email
                                              .toString() ??
                                          '',
                                      style: userEmailProfile,
                                    )
                                  : Text(
                                      controller.userEmail.value.toString(),
                                      style: userEmailProfile,
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sizeHeight * 0.2,
                  ),
                  Container(
                    width: sizeWidth,
                    color: backgroundColor,
                    child: Column(
                      children: [
                        SizedBox(
                          height: sizeHeight * 1.2,
                        ),
                        Image.asset(
                          footerWhite,
                          width: sizeWidth,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: sizeHeight * 0.135,
                left: sizeWidth * 0.055,
                child: Column(
                  children: [
                    KhususBuatKamuComponent(),
                    SizedBox(
                      height: sizeHeight * 0.03,
                    ),
                    InformasiPengaturanComponent(),
                    SizedBox(
                      height: sizeHeight * 0.03,
                    ),
                    KontakBantuanComponent(),
                    SizedBox(
                      height: sizeHeight * 0.03,
                    ),
                    Container(
                      width: sizeWidth * 0.89,
                      height: sizeHeight * 0.07,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: warningColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          controllerProfile.signOut();
                        },
                        child: Text(
                          "Keluar Akun",
                          style: buttonLogoutProfile,
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
    );
  }
}
