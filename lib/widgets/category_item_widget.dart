import 'package:flutter/material.dart';
import 'package:realestateui/models/hotel_category.dart';
import 'package:realestateui/widgets/custom_icon_button_widget.dart';
import 'package:realestateui/widgets/mybutton_widget.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.hotelCategoryData,
  }) : super(key: key);

  final double height;
  final double width;
  final HotelCategory hotelCategoryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 2.0,
              color: Colors.grey.withOpacity(0.3),
              offset: Offset(0.0, 0.0))
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      height: height * 0.46,
      width: width * 0.8,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(height * 0.02),
            height: height * 0.22,
            width: width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(hotelCategoryData.imageUrl),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotelCategoryData.categoryName,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "More than ${hotelCategoryData.totalHotels} House waiting for your rent or buy",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButtonWidget(
                  height: height,
                  width: width,
                  data: hotelCategoryData.pricePerMonth,
                ),
                CustomIconButton(width: width, height: height)
              ],
            ),
          )
        ],
      ),
    );
  }
}
