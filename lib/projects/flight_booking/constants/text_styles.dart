
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/colors.dart';
class AppTextStyles{
  AppTextStyles._();
  static const flightsTextStyle=TextStyle(fontWeight: FontWeight.w600,color: AppColors.mainGreenColor,fontSize: 32);
  static const shortCountryTextStyle=TextStyle(fontWeight: FontWeight.w300,color: AppColors.mainYellowColor,fontSize: 32);
  static const countryTextStyle=TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 12,fontFamily: "Overpass");
  static final dateTextStyle=TextStyle(fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.7),fontSize: 12,fontFamily: "Overpass");
  static const ticketGreenTextStyle=TextStyle(fontWeight: FontWeight.w600,color: AppColors.mainGreenColor,fontSize: 12,fontFamily: "Overpass");
  static const ticketLightGreenTextStyle=TextStyle(fontWeight: FontWeight.w600,color: Color.fromRGBO(66, 92, 89, 0.7),fontSize: 12,fontFamily: "Overpass");
  static const detailGreenTextStyle=TextStyle(fontWeight: FontWeight.w600,color: AppColors.mainGreenColor,fontSize: 14,fontFamily: "Overpass");
  static const detailLightGreenTextStyle=TextStyle(fontWeight: FontWeight.w600,color: Color.fromRGBO(66, 92, 89, 0.7),fontSize: 14,fontFamily: "Overpass");
  static const barcodeTextStyle=TextStyle(fontWeight: FontWeight.w600,color: AppColors.mainGreenColor,fontSize: 20);
  static const detailRefTextStyle=TextStyle(fontWeight: FontWeight.w600,color: Color.fromRGBO(66, 92, 89, 0.7),fontSize:22 );
}


