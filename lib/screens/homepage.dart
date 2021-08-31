import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestateui/resources/my_icon_icons.dart';
import 'package:realestateui/services/data_provider.dart';
import 'package:realestateui/widgets/category_item_widget.dart';
import 'package:realestateui/widgets/hotel_rating_widget.dart';
import 'package:realestateui/widgets/menu_title_widget.dart';
import 'package:realestateui/widgets/offer_banner_widget.dart';
import 'package:realestateui/widgets/section_title_with_option_widget.dart';
import 'package:realestateui/widgets/text_field_widget.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height;
    final width = screenSize.width;

    final hotelData = Provider.of<DataProvider>(context).gethotelsData;
    final ratingData = Provider.of<DataProvider>(context).getratingData;
    final hotelCategoryData =
        Provider.of<DataProvider>(context).gethotelCategoryData;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: MenuTitleWidget(width: width, height: height),
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
          Container(
            margin: EdgeInsets.only(right: width * 0.03),
            child: IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () {},
              icon: Icon(
                MyIcon.menu_icon,
                color: Colors.black,
                size: 18,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFieldWidget(height: height, width: width),
                  ),
                  IconButton(
                    onPressed: () {},
                    alignment: Alignment.centerRight,
                    icon: Icon(
                      MyIcon.fillter_icon,
                    ),
                  )
                ],
              ),
              SizedBox(height: height * 0.02),
              OfferBannerWidget(width: width, height: height),
              SizedBox(height: height * 0.02),
              SectionTitleWithOptionWidget(),
              Container(
                height: height * 0.46,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotelCategoryData.length,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(
                              right: width * 0.05, bottom: width * 0.02),
                          child: CategoryItemWidget(
                            height: height,
                            width: width,
                            hotelCategoryData: hotelCategoryData[index],
                          ));
                    }),
              ),
              SizedBox(height: height * 0.02),
              HotelRatingWidget(
                hotelsData: hotelData,
                height: height,
                width: width,
                ratingData: ratingData,
              ),
              SizedBox(height: height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
