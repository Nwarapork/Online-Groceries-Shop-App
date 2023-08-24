import 'package:flutter/material.dart';
import 'package:online_groceries/common/color_extension.dart';

class Dropdown extends StatelessWidget {
  final String title;
  final String placeholder;
  final List valueList;
  final Function(Object?) didChange;
  const Dropdown(
      {super.key,
      required this.title,
      required this.placeholder,
      required this.valueList,
      required this.didChange});

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
        SizedBox(
          height: 50,
          child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  onChanged: didChange,
                  icon: Icon(
                    Icons.expand_more,
                    color: TColor.textTitle,
                  ),
                  hint: Text(
                    placeholder,
                    style: TextStyle(
                        color: TColor.placeholder,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  isExpanded: true,
                  items: valueList.map((obj) {
                    return DropdownMenuItem(
                        value: obj.toString(),
                        child: Text(
                          "Your Zone : $obj",
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ));
                  }).toList())),
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
