import 'package:flutter/material.dart';

class OfferBannerWidget extends StatelessWidget {
  const OfferBannerWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height * 0.19,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1612152605347-f93296cb657d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
            ),
          ),
        ),
        Container(
          height: height * 0.19,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: width * 0.05),
          height: height * 0.19,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Enjoy your weekends",
                style: TextStyle(
                    fontFamily: "Poppins", color: Colors.white, fontSize: 20),
              ),
              Text(
                "with family | Special Offer!",
                style: TextStyle(
                    fontFamily: "Poppins", color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                "50% Off",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
