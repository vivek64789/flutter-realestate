import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.grey.withOpacity(0.2),
        ),
        width: width * 0.12,
        height: height * 0.05,
        child: Icon(
          Icons.arrow_forward,
          size: 30,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
