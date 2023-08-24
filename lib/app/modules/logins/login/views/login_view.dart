import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/common_widget/dropdown.dart';
import 'package:online_groceries/common_widget/line_textfield.dart';
import 'package:online_groceries/common_widget/round_button.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                      "Login",
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
                const SizedBox(
                  height: 12,
                ),
                LineTextField(
                  controller: controller.txtEmail,
                  title: "Email",
                  placeholder: "Enter your email address",
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
