import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/flights_info_list.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/text_styles.dart';


class InfoViewWidget extends StatelessWidget {
  bool ticketScreen;
  int dataIndex;

  InfoViewWidget({Key? key,required this.ticketScreen,required this.dataIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Flight Date",
                style: ticketScreen
                    ? AppTextStyles.ticketGreenTextStyle
                    : AppTextStyles.detailGreenTextStyle),
            const SizedBox(height: 8),
            Text(ticketList[dataIndex]["date"],
                style: ticketScreen
                    ? AppTextStyles.ticketLightGreenTextStyle
                    : AppTextStyles.detailLightGreenTextStyle),
            const SizedBox(height: 30),
            Text("Boarding time",
                style: ticketScreen
                    ? AppTextStyles.ticketGreenTextStyle
                    : AppTextStyles.detailGreenTextStyle),
            const SizedBox(height: 8),
            Text(ticketList[dataIndex]["boardingTime"],
                style: ticketScreen
                    ? AppTextStyles.ticketLightGreenTextStyle
                    : AppTextStyles.detailLightGreenTextStyle),
          ],
        )),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Zone",
                style: ticketScreen
                    ? AppTextStyles.ticketGreenTextStyle
                    : AppTextStyles.detailGreenTextStyle),
            const SizedBox(height: 8),
            Text(ticketList[dataIndex]["zone"],
                style: ticketScreen
                    ? AppTextStyles.ticketLightGreenTextStyle
                    : AppTextStyles.detailLightGreenTextStyle),
            const SizedBox(height: 30),
            Text("Seat",
                style: ticketScreen
                    ? AppTextStyles.ticketGreenTextStyle
                    : AppTextStyles.detailGreenTextStyle),
            const SizedBox(height: 8),
            Text(ticketList[dataIndex]["seat"],
                style: ticketScreen
                    ? AppTextStyles.ticketLightGreenTextStyle
                    : AppTextStyles.detailLightGreenTextStyle),
          ],
        )),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Flight Number",
                style: ticketScreen
                    ? AppTextStyles.ticketGreenTextStyle
                    : AppTextStyles.detailGreenTextStyle),
            const SizedBox(height: 8),
            Text(ticketList[dataIndex]["number"],
                style: ticketScreen
                    ? AppTextStyles.ticketLightGreenTextStyle
                    : AppTextStyles.detailLightGreenTextStyle),
            const SizedBox(height: 30),
            Text("Class",
                style: ticketScreen
                    ? AppTextStyles.ticketGreenTextStyle
                    : AppTextStyles.detailGreenTextStyle),
            const SizedBox(height: 8),
            Text(ticketList[dataIndex]["class"],
                style: ticketScreen
                    ? AppTextStyles.ticketLightGreenTextStyle
                    : AppTextStyles.detailLightGreenTextStyle),
          ],
        )),
      ],
    );
  }
}
