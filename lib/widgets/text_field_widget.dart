import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height * 0.09,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
        color: Colors.black.withOpacity(0.07),
      ),
      child: ListTile(
        leading: Icon(
          Icons.search,
          size: 30,
        ),
        title: CupertinoTextField.borderless(
          placeholder: "Search your Hotels",
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
