import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/common_widget/round_button.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/img/welcome_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get your groceries in as fast as one hour",
                      style: TextStyle(
                          color: TColor.blueText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: RoundButton(
                      title: "Get Started",
                      color: TColor.blueText,
                      onPressed: () => Get.toNamed('/sign-in')),
                ),
                SizedBox(
                  height: media.height * 0.15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
