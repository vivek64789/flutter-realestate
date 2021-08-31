import 'package:flutter/cupertino.dart';
import 'package:realestateui/data/hotel_categories_data.dart';
import 'package:realestateui/data/hotels_data.dart';
import 'package:realestateui/data/rating_data.dart';
import 'package:realestateui/models/hotel.dart';
import 'package:realestateui/models/hotel_category.dart';
import 'package:realestateui/models/rating.dart';

class DataProvider with ChangeNotifier {
  List<Hotel> hotelsList = hotelData;
  List<Rating> ratingList = ratingData;
  List<HotelCategory> hotelCategoryList = hotelCategoryData;

  List<Hotel> get gethotelsData {
    return hotelsList;
  }

  List<Rating> get getratingData {
    return ratingList;
  }

  List<HotelCategory> get gethotelCategoryData {
    return hotelCategoryList;
  }
}
