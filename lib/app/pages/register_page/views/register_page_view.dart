import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/app/pages/login_page/views/widgets/button_login_register.dart';
import 'package:sakuku_app/app/pages/login_page/views/widgets/or_widget_login_register.dart';
import 'package:sakuku_app/app/pages/login_page/views/widgets/textfield_login_register.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/app/pages/register_page/controllers/register_page_controller.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/login_register_page_themes.dart';

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
            padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.06),
            child: SvgPicture.asset(logoHorizontal),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: sizeWidth * 0.065,
            vertical: sizeHeight * 0.015,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat Datang Di Sakuku!",
                style: subtitleLoginRegisterPage,
              ),
              Text(
                "Gabung Sekarang!",
                style: titleLoginRegisterPage,
              ),
              SizedBox(
                height: sizeHeight * 0.035,
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
                        color: hintTextColor,
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
                      height: sizeHeight * 0.01,
                    ),
                    TextfieldLoginRegister(
                      fieldController: controller.cEmailSignUp,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        size: 20,
                        color: hintTextColor,
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
                      height: sizeHeight * 0.01,
                    ),
                    Obx(() => TextfieldLoginRegister(
                          fieldController: controller.cPasswordSignUp,
                          obscureText: controller.isVisiblePass.value,
                          keyboardType: TextInputType.visiblePassword,
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            size: 20,
                            color: hintTextColor,
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
                                    color: hintTextColor,
                                  )
                                : Icon(
                                    Icons.visibility_off_rounded,
                                    size: 23,
                                    color: hintTextColor,
                                  ),
                          ),
                        )),
                    SizedBox(
                      height: sizeHeight * 0.01,
                    ),
                    Obx(() => TextfieldLoginRegister(
                          fieldController: controller.cConfirmPasswordSignUp,
                          obscureText: controller.isVisibleConfirm.value,
                          keyboardType: TextInputType.visiblePassword,
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            size: 20,
                            color: hintTextColor,
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
                                    color: hintTextColor,
                                  )
                                : Icon(
                                    Icons.visibility_off_rounded,
                                    size: 23,
                                    color: hintTextColor,
                                  ),
                          ),
                        )),
                    SizedBox(
                      height: sizeHeight * 0.04,
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
                        style: buttonLoginRegister,
                      ),
                    ),
                    SizedBox(
                      height: sizeHeight * 0.03,
                    ),
                    OrWidget(),
                    SizedBox(
                      height: sizeHeight * 0.03,
                    ),
                    ButtonLoginRegister(
                      onTap: () {
                        controller.signUpWithGoogle();
                      },
                      isEmailOrGoogle: controller.isGoogleSignUp.value,
                      isColor: false,
                      child: SvgPicture.asset(
                        iconGoogle,
                      ),
                    ),
                    SizedBox(
                      height: sizeHeight * 0.035,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already as user?",
                          style: textAlreadyUser,
                        ),
                        SizedBox(
                          width: sizeWidth * 0.01,
                        ),
                        InkWell(
                          onTap: () => Get.toNamed(Routes.LOGIN_PAGE),
                          child: Text(
                            "Sign In",
                            style: textSignInUp,
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
