import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/common_widget/line_textfield.dart';
import 'package:online_groceries/common_widget/round_button.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: TColor.placeholder),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/kanika_logo.png',
                  width: media.width * 0.5,
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Enter your credentials to continue",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                LineTextField(
                  controller: controller.txtUsername,
                  title: "Username",
                  placeholder: "Enter your username",
                  typeText: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.height * 0.04,
                ),
                LineTextField(
                  controller: controller.txtEmail,
                  title: "Email",
                  placeholder: "Enter your email",
                  typeText: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.height * 0.04,
                ),
                Obx(
                  () => LineTextField(
                    controller: controller.txtPassword,
                    title: "Password",
                    placeholder: "Enter your password",
                    obsecureText: controller.isShow.value,
                    typeText: TextInputType.text,
                    right: IconButton(
                        onPressed: () {
                          controller.isShow.value = !controller.isShow.value;
                        },
                        icon: controller.isShow.value
                            ? const Icon(FontAwesomeIcons.eye)
                            : const Icon(FontAwesomeIcons.eyeSlash)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        children: [
                      const TextSpan(
                        text: "By continue you agree to our ",
                      ),
                      TextSpan(
                          text: "Terms of Service",
                          style: TextStyle(
                              color: TColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Terms of Service");
                            }),
                      const TextSpan(
                        text: " and ",
                      ),
                      TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                              color: TColor.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Privacy Policy");
                            }),
                    ])),
                SizedBox(
                  height: media.height * 0.01,
                ),
                RoundButton(
                    title: "Login", color: Colors.white, onPressed: () {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}
