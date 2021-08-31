import 'package:flutter/material.dart';
import 'package:realestateui/models/hotel.dart';
import 'package:realestateui/models/rating.dart';

class HotelRatingWidget extends StatefulWidget {
  HotelRatingWidget(
      {Key? key,
      required this.height,
      required this.hotelsData,
      required this.ratingData,
      required this.width})
      : super(key: key);
  final double width;
  final double height;
  final List<Rating> ratingData;
  final List<Hotel> hotelsData;

  @override
  _HotelRatingWidgetState createState() => _HotelRatingWidgetState();
}

class _HotelRatingWidgetState extends State<HotelRatingWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController =
        TabController(length: widget.ratingData.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.height * 0.54,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            controller: tabController,
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  widget.ratingData[0].rating,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  widget.ratingData[1].rating,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  widget.ratingData[2].rating,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  widget.ratingData[3].rating,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  widget.ratingData[4].rating,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: widget.height * 0.47,
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.builder(
                  itemCount: widget.hotelsData.length,
                  itemBuilder: (context, index) {
                    return RatingHotelItemWidget(
                      height: widget.height,
                      width: widget.width,
                      hotelsData: widget.hotelsData[index],
                    );
                  },
                ),
                ListView.builder(
                  itemCount: widget.hotelsData.length,
                  itemBuilder: (context, index) {
                    return RatingHotelItemWidget(
                      height: widget.height,
                      width: widget.width,
                      hotelsData: widget.hotelsData[index],
                    );
                  },
                ),
                ListView.builder(
                  itemCount: widget.hotelsData.length,
                  itemBuilder: (context, index) {
                    return RatingHotelItemWidget(
                      height: widget.height,
                      width: widget.width,
                      hotelsData: widget.hotelsData[index],
                    );
                  },
                ),
                ListView.builder(
                  itemCount: widget.hotelsData.length,
                  itemBuilder: (context, index) {
                    return RatingHotelItemWidget(
                      height: widget.height,
                      width: widget.width,
                      hotelsData: widget.hotelsData[index],
                    );
                  },
                ),
                ListView.builder(
                  itemCount: widget.hotelsData.length,
                  itemBuilder: (context, index) {
                    return RatingHotelItemWidget(
                      height: widget.height,
                      width: widget.width,
                      hotelsData: widget.hotelsData[index],
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RatingHotelItemWidget extends StatelessWidget {
  const RatingHotelItemWidget({
    Key? key,
    required this.height,
    required this.hotelsData,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  final Hotel hotelsData;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(hotelsData.imageUrl),
              ),
            ),
            width: width * 0.3,
            height: width * 0.3,
          ),
          SizedBox(
            width: width * 0.04,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.07,
                    vertical: width * 0.015,
                  ),
                  alignment: Alignment.center,
                  height: width * 0.1,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Theme.of(context).primaryColor),
                  child: Text(
                    "${hotelsData.ratePerMonth}% Off",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  hotelsData.hotelName,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
