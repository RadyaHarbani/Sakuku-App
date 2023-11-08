import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/app/widgets/button_login_register.dart';
import 'package:sakuku_app/app/widgets/or_widget_login_register.dart';
import 'package:sakuku_app/app/widgets/textfield_login_register.dart';
import 'package:sakuku_app/app/pages/login_page/controllers/login_page_controller.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SvgPicture.asset('assets/logos/logo_horizontal.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat Kembali! ",
                style: GoogleFonts.poppins(
                  fontSize: figmaFontsize(24),
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              Text(
                "Masuk Untuk Melanjutkan",
                style: GoogleFonts.poppins(
                  fontSize: figmaFontsize(14),
                  height: 1.2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(
                      'assets/images/login_register_images/robot_login_image.png',
                    ),
                  ),
                ],
              ),
              Form(
                key: controller.formField,
                child: Column(
                  children: [
                    TextfieldLoginRegister(
                      fieldController: controller.cUsernameSignIn,
                      obscureText: false,
                      keyboardType: TextInputType.name,
                      hintText: "Username",
                      prefixIcon: Icon(
                        Icons.person,
                        size: 20,
                        color: Color(0xFF7B7B7B),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextfieldLoginRegister(
                      fieldController: controller.cEmailSignIn,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        size: 20,
                        color: Color(0xFF7B7B7B),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your email";
                        } else if (!controller.isValidEmail(value)) {
                          return "Please enter valid email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Obx(
                      () => TextfieldLoginRegister(
                        fieldController: controller.cPasswordSignIn,
                        obscureText: controller.isVisibleSignIn.value,
                        keyboardType: TextInputType.visiblePassword,
                        hintText: "Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 20,
                          color: Color(0xFF7B7B7B),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.isVisibleSignIn.value =
                                !controller.isVisibleSignIn.value;
                          },
                          icon: Icon(
                            controller.isVisibleSignIn.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 20,
                            color: Color(0xFF7B7B7B),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your password";
                          } else if (value.length < 8) {
                            return "Password must be at least 8 characters";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Obx(
                      () => ButtonLoginRegister(
                        onTap: () {
                          if (controller.formField.currentState!.validate()) {
                            controller.signInWithEmailAndPassword();
                          }
                        },
                        isEmailOrGoogle: controller.isEmailSignIn.value,
                        isColor: true,
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: figmaFontsize(16),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OrWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    ButtonLoginRegister(
                      onTap: () {
                        controller.signInWithGoogle();
                      },
                      isEmailOrGoogle: controller.isGoogleSignIn.value,
                      isColor: false,
                      child: SvgPicture.asset(
                        'assets/icons/icon_google.svg',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already as user?",
                          style: GoogleFonts.poppins(
                            color: primaryColor,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        InkWell(
                          onTap: () => Get.toNamed(Routes.REGISTER_PAGE),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
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
