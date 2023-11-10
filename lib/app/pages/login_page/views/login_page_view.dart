import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/app/pages/login_page/views/widgets/button_login_register.dart';
import 'package:sakuku_app/app/pages/login_page/views/widgets/or_widget_login_register.dart';
import 'package:sakuku_app/app/pages/login_page/views/widgets/textfield_login_register.dart';
import 'package:sakuku_app/app/pages/login_page/controllers/login_page_controller.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';
import 'package:sakuku_app/helpers/themes/image_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/login_register_page_themes.dart';

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
            color: primaryTextColorBlack,
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
            vertical: sizeHeight * 0.025,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat Kembali! ",
                style: titleLoginRegisterPage,
              ),
              Text(
                "Masuk Untuk Melanjutkan",
                style: subtitleLoginRegisterPage,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.04),
                    child: Image.asset(
                      robotLogin,
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
                        color: hintTextColor,
                      ),
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
                      fieldController: controller.cEmailSignIn,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        size: 20,
                        color: hintTextColor,
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
                      height: sizeHeight * 0.01,
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
                          color: hintTextColor,
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
                            color: hintTextColor,
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
                      height: sizeHeight * 0.04,
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
                          style: buttonLoginRegister,
                        ),
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
                        controller.signInWithGoogle();
                      },
                      isEmailOrGoogle: controller.isGoogleSignIn.value,
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
                          onTap: () => Get.toNamed(Routes.REGISTER_PAGE),
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
