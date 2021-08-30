import 'package:flutter/material.dart';

class MenuTitleWidget extends StatelessWidget {
  const MenuTitleWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width * 0.01),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(height * 0.01),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1565464027194-7957a2295fb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80")),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            height: height * 0.2,
            width: width * 0.15,
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "My Location",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                    size: 30,
                  )
                ],
              ),
              Text(
                "Cox's Bazar, BD",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
