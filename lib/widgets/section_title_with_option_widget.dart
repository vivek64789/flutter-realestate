import 'package:flutter/material.dart';
import 'package:realestateui/resources/my_icon_icons.dart';

class SectionTitleWithOptionWidget extends StatelessWidget {
  const SectionTitleWithOptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Category",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            MyIcon.dot_3,
            size: 30,
          ),
        )
      ],
    );
  }
}
