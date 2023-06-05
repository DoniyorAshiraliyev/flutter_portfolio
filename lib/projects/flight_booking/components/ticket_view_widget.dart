import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/colors.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/text_styles.dart';


class TicketViewWidget extends StatelessWidget {
  final String fromCode;
  final String fromName;
  final String toCode;
  final String toName;
  final String flyingTime;
  final String date;
  final String number;

  const TicketViewWidget({
    Key? key,
    required this.fromCode,
    required this.fromName,
    required this.toCode,
    required this.toName,
    required this.flyingTime,
    required this.date,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: ()=>currentTicketIndex,
      child: ColoredBox(
        color: AppColors.mainGreenColor,
        child: SizedBox(
          height: 150,
          width: 300,
          child: Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(fromCode, style: AppTextStyles.shortCountryTextStyle),
                  Text(fromName, style: AppTextStyles.countryTextStyle),
                  const SizedBox(height: 10),
                  Text("Date", style: AppTextStyles.dateTextStyle),
                  Text(date, style: AppTextStyles.countryTextStyle),
                  const SizedBox(height: 10),
                  const Text("", style: AppTextStyles.countryTextStyle),
                ],
              )),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/flight_booking/go_img.png",
                    width: 70,
                    height: 40,
                  ),
                  Text(flyingTime, style: AppTextStyles.countryTextStyle),
                ],
              )),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(toCode, style: AppTextStyles.shortCountryTextStyle),
                  Text(toName, style: AppTextStyles.countryTextStyle),
                  const SizedBox(height: 10),
                  Text("Flight Number", style: AppTextStyles.dateTextStyle),
                  Text(number, style: AppTextStyles.countryTextStyle),
                  const SizedBox(height: 10),
                  const Text("View Ticket >",
                      style: AppTextStyles.countryTextStyle),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
