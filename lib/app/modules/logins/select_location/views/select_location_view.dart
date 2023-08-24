import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_groceries/common/color_extension.dart';
import 'package:online_groceries/common_widget/dropdown.dart';
import 'package:online_groceries/common_widget/line_textfield.dart';
import 'package:online_groceries/common_widget/round_button.dart';

import '../controllers/select_location_controller.dart';

//SelectLocationView
class SelectLocationView extends GetView<SelectLocationController> {
  const SelectLocationView({Key? key}) : super(key: key);
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
                  'assets/img/location.png',
                  width: media.width * 0.5,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Select Your Location",
                  style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Switch on your location to stay in tune with\nwhat's happening in your area",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                Dropdown(
                    title: "Your Zone",
                    placeholder: "Select your zone",
                    valueList: const ["BKK", "NKS", "CM"],
                    didChange: (sObj) {}),
                const SizedBox(
                  height: 12,
                ),
                Dropdown(
                    title: "Your Area",
                    placeholder: "Types of your area",
                    valueList: const ["Area 1", "Area 2", "Area 3"],
                    didChange: (sObj) {}),
                SizedBox(
                  height: media.height * 0.1,
                ),
                RoundButton(
                    title: "submit", color: Colors.white, onPressed: () => Get.toNamed('/login'))
              ],
            ),
          ),
        )));
  }
}
