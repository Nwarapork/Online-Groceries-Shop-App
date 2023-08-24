import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/common_widget/line_textfield.dart';

import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  const VerificationView({Key? key}) : super(key: key);
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: media.height * 0.08,
                ),
                Text(
                  "Enter your 4-digits code",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                LineTextField(
                    controller: controller.txtOTP,
                    title: "Code",
                    placeholder: " - - - - "),
                SizedBox(
                  height: media.height * 0.3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Resend Code",
                        style: TextStyle(
                            color: TColor.primary,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.toNamed('/select-location'),
                      child: Container(
                        width: 60,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: TColor.primary,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          FontAwesomeIcons.arrowRight,
                          size: 28,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )));
  }
}
