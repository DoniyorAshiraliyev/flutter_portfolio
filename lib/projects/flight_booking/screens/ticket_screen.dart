import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/flight_booking/components/clip_circular_widget.dart';
import 'package:flutter_portfolio/projects/flight_booking/components/info_view_widget.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/colors.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/flights_info_list.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/text_styles.dart';
import 'package:flutter_portfolio/projects/flight_booking/screens/details_screen.dart';
import 'package:flutter_portfolio/projects/flight_booking/screens/home_screen.dart';


class TicketScreen extends StatefulWidget {
  static const String id = "ticket_screen";

  const TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainGreenColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () =>
                            Navigator.of(context).pushNamed(HomeScreen.id),
                        child: const Icon(Icons.arrow_back_sharp,
                            color: Colors.white, size: 30),
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.plusButtonColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            "assets/images/flight_booking/image_img.png",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticketList[currentTicketIndex]["fromCode"],
                              style: AppTextStyles.shortCountryTextStyle),
                          Text(ticketList[currentTicketIndex]["fromName"],
                              style: AppTextStyles.countryTextStyle),
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
                           Text(ticketList[currentTicketIndex]["flyingTime"],
                              style: AppTextStyles.countryTextStyle),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticketList[currentTicketIndex]["toCode"],
                              style: AppTextStyles.shortCountryTextStyle),
                          Text(ticketList[currentTicketIndex]["toName"],
                              style: AppTextStyles.countryTextStyle),
                        ],
                      )),
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                Container(
                  height: 510,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        const SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/flight_booking/delta_ticket_img.png",
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () => Navigator.of(context)
                                          .pushNamed(DetailsScreen.id),
                                      child: Image.asset(
                                        "assets/images/flight_booking/expand_img.png",
                                        height: 25,
                                        width: 25,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset("assets/images/flight_booking/map_img.png"),
                              ],
                            ),
                            Text(
                              "Ref. " +
                                  ticketList[currentTicketIndex]["number"],
                              style: AppTextStyles.detailRefTextStyle,
                            ),
                            const Divider(color: AppColors.mainGreenColor),
                            InfoViewWidget(
                                ticketScreen: true,
                                dataIndex: currentTicketIndex),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const ClipCircularWidget(),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20.0, right: 40, left: 40),
                        child: SizedBox(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "Boarding pass",
                                style: AppTextStyles.barcodeTextStyle,
                              ),
                              Image.asset(
                                  "assets/images/flight_booking/barcode_img.png"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
