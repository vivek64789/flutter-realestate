import 'package:flutter/material.dart';
import 'package:realestateui/resources/my_icon_icons.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height;
    final width = screenSize.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(
              left: width * 0.1,
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  height: height * 0.1,
                  width: width * 0.1,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "My Location",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.black,
                        )
                      ],
                    ),
                    Text(
                      "Cox's Bazar, BD",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    )
                  ],
                )
              ],
            ),
          ),
          actions: [
            IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () {},
              icon: Icon(
                MyIcon.notification_icon,
                color: Colors.black,
                size: 25,
              ),
            ),
            IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () {},
              icon: Icon(
                MyIcon.menu_icon,
                color: Colors.black,
                size: 18,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(),
            ],
          ),
        ));
  }
}
