import 'package:flutter/material.dart';
import 'package:online_groceries/common/color_extension.dart';

class LineTextField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String placeholder;
  final Widget? right;
  final TextInputType? typeText;
  final bool obsecureText;
  const LineTextField(
      {super.key,
      required this.controller,
      required this.title,
      required this.placeholder,
      this.right,
      this.typeText,
      this.obsecureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        TextField(
          onTapOutside: (_) => FocusScope.of(context).unfocus(),
          controller: controller,
          keyboardType: typeText,
          obscureText: obsecureText,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          decoration: InputDecoration(
              suffixIcon: right,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: placeholder,
              hintStyle: TextStyle(color: TColor.placeholder, fontSize: 17)),
        ),
        Container(
          width: double.maxFinite,
          color: TColor.placeholder,
          height: 1,
        )
      ],
    );
  }
}
