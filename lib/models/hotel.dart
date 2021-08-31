import 'package:realestateui/models/rating.dart';

class Hotel {
  String id;
  String hotelName;
  String description;
  int ratePerMonth;
  String imageUrl;
  int bedroom;
  int swimmingpool;
  int bathroom;
  Rating hotelRating;

  Hotel({
    required this.id,
    required this.hotelRating,
    required this.hotelName,
    required this.description,
    required this.ratePerMonth,
    required this.imageUrl,
    required this.bedroom,
    required this.swimmingpool,
    required this.bathroom,
  });
}
