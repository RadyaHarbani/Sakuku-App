import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/components/button_login_register.dart';
import 'package:sakuku_app/components/or_widget_login_register.dart';
import 'package:sakuku_app/components/textfield_login_register.dart';
import 'package:sakuku_app/helpers/themes.dart';
import 'package:sakuku_app/modules/register_page/controllers/register_page_controller.dart';
import 'package:sakuku_app/routes/app_pages.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  const RegisterPageView({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat Datang Di Sakuku!",
                style: GoogleFonts.poppins(
                  fontSize: figmaFontsize(14),
                ),
              ),
              Text(
                "Gabung Sekarang!",
                style: GoogleFonts.poppins(
                  height: 1.2,
                  fontSize: figmaFontsize(24),
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(
                      'assets/images/login_register_images/robot_register_image.png',
                    ),
                  ),
                ],
              ),
              Form(
                key: controller.formField,
                child: Column(
                  children: [
                    TextfieldLoginRegister(
                      fieldController: controller.cUsernameSignUp,
                      obscureText: false,
                      keyboardType: TextInputType.name,
                      prefixIcon: Icon(
                        Icons.person,
                        size: 20,
                        color: Color(0xFF7B7B7B),
                      ),
                      hintText: "Username",
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
                      fieldController: controller.cEmailSignUp,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        size: 20,
                        color: Color(0xFF7B7B7B),
                      ),
                      hintText: "Email",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your email";
                        } else if (!controller.isValidEmail(value)) {
                          return "Please enter a valid email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Obx(() => TextfieldLoginRegister(
                          fieldController: controller.cPasswordSignUp,
                          obscureText: controller.isVisiblePass.value,
                          keyboardType: TextInputType.visiblePassword,
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            size: 20,
                            color: Color(0xFF7B7B7B),
                          ),
                          hintText: "Password",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your password";
                            } else if (value.length < 6) {
                              return "Password must be at least 6 characters";
                            }
                            return null;
                          },
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.isVisiblePass.value =
                                  !controller.isVisiblePass.value;
                            },
                            icon: controller.isVisiblePass.value
                                ? Icon(
                                    Icons.visibility_rounded,
                                    size: 23,
                                    color: Color(0xFF7B7B7B),
                                  )
                                : Icon(
                                    Icons.visibility_off_rounded,
                                    size: 23,
                                    color: Color(0xFF7B7B7B),
                                  ),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Obx(() => TextfieldLoginRegister(
                          fieldController: controller.cConfirmPasswordSignUp,
                          obscureText: controller.isVisibleConfirm.value,
                          keyboardType: TextInputType.visiblePassword,
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            size: 20,
                            color: Color(0xFF7B7B7B),
                          ),
                          hintText: "Confirm Password",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your password";
                            } else if (value !=
                                controller.cPasswordSignUp!.text) {
                              return "Password doesn't match";
                            }
                            return null;
                          },
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.isVisibleConfirm.value =
                                  !controller.isVisibleConfirm.value;
                            },
                            icon: controller.isVisibleConfirm.value
                                ? Icon(
                                    Icons.visibility_rounded,
                                    size: 23,
                                    color: Color(0xFF7B7B7B),
                                  )
                                : Icon(
                                    Icons.visibility_off_rounded,
                                    size: 23,
                                    color: Color(0xFF7B7B7B),
                                  ),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    ButtonLoginRegister(
                      onTap: () {
                        if (controller.formField.currentState!.validate()) {
                          controller.createUserWithEmailAndPassword();
                        }
                      },
                      isEmailOrGoogle: controller.isEmailSignUp.value,
                      isColor: true,
                      child: Text(
                        "Register",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: figmaFontsize(17),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    OrWidget(),
                    SizedBox(
                      height: 30,
                    ),
                    ButtonLoginRegister(
                      onTap: () {
                        controller.signUpWithGoogle();
                      },
                      isEmailOrGoogle: controller.isGoogleSignUp.value,
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
                          onTap: () => Get.toNamed(Routes.LOGIN_PAGE),
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
