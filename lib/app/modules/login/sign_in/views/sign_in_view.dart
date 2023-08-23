import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/common_widget/round_button.dart';
import 'package:online_groceries/viewmodels/single_sign_on_view_model.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Image.asset(
              "assets/img/sign_in_bg.png",
              height: media.height,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                children: [
                  SizedBox(
                    height: media.height * 0.5,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get your groceries\nwith necter",
                                    style: TextStyle(
                                        color: TColor.primaryText,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              TextField(
                                controller: controller.txtMobils,
                                keyboardType: TextInputType.phone,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                                decoration: InputDecoration(
                                    prefixIcon: GestureDetector(
                                        onTap: () async {
                                          final code = await controller
                                              .countryPicker
                                              .showPicker(context: context);
                                          if (code != null) {
                                            controller.countryCode.value = code;
                                          }
                                        },
                                        child: Obx(
                                          // ถ้าไม่ใส่ Obx จะไม่ update แบบ real-time
                                          () => Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 15),
                                                width: 35,
                                                height: 35,
                                                child: controller.countryCode
                                                    .value.flagImage,
                                              ),
                                              Text(
                                                controller
                                                    .countryCode.value.dialCode,
                                                style: TextStyle(
                                                    color: TColor.primaryText,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              const SizedBox(
                                                width: 12,
                                              )
                                            ],
                                          ),
                                        )),
                                    border: InputBorder.none,
                                    hintText: "Mobile Number",
                                    hintStyle: TextStyle(
                                        color: TColor.placeholder,
                                        fontSize: 17)),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Or connect with social media',
                                    style: TextStyle(
                                        color: TColor.secondaryText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        ...signOnButton()
                      ],
                    ),
                  )
                ],
              )),
            )
          ],
        ));
  }

  List<Padding> signOnButton() => SingleSignOnViewModel()
      .items
      .map((item) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundIconButton(
                title: item.title,
                icon: item.icon,
                bgColor: item.backgroundColor,
                onPressed: () {}),
          ))
      .toList();
}
