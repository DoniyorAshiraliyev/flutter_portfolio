import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/flight_booking/components/ticket_view_widget.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/colors.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/flights_info_list.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/text_styles.dart';
import 'package:flutter_portfolio/projects/flight_booking/screens/ticket_screen.dart';


class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/flight_booking/menu_img.png",
                              height: 30,
                              width: 30,
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
                        const Text(
                          "My Flights",
                          style: AppTextStyles.flightsTextStyle,
                        )
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColors.mainGreenColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40)),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(children: [
                        const SizedBox(height: 60),
                        Column(
                          children: [
                            const SizedBox(height: 30),
                            GestureDetector(
                              onTap: <Future>() {
                                currentTicketIndex = 0;
                                return Navigator.of(context)
                                    .pushNamed(TicketScreen.id);
                              },
                              child: TicketViewWidget(
                                fromCode: ticketList[0]["fromCode"],
                                fromName: ticketList[0]["fromName"],
                                toCode: ticketList[0]["toCode"],
                                toName: ticketList[0]["toName"],
                                date: ticketList[0]["date"],
                                number: ticketList[0]["number"],
                                flyingTime: ticketList[0]["flyingTime"],
                              ),
                            ),
                            const Divider(
                              color: AppColors.mainYellowColor,
                              thickness: 1.5,
                            ),
                            GestureDetector(
                              onTap: <Future>() {
                                currentTicketIndex = 1;
                                return Navigator.of(context)
                                    .pushNamed(TicketScreen.id);
                              },
                              child: TicketViewWidget(
                                fromCode: ticketList[1]["fromCode"],
                                fromName: ticketList[1]["fromName"],
                                toCode: ticketList[1]["toCode"],
                                toName: ticketList[1]["toName"],
                                date: ticketList[1]["date"],
                                number: ticketList[1]["number"],
                                flyingTime: ticketList[1]["flyingTime"],
                              ),
                            ),
                            const Divider(
                              color: AppColors.mainYellowColor,
                              thickness: 1.5,
                            ),
                            GestureDetector(
                              onTap: <Future>() {
                                currentTicketIndex = 2;
                                return Navigator.of(context)
                                    .pushNamed(TicketScreen.id);
                              },
                              child: TicketViewWidget(
                                fromCode: ticketList[2]["fromCode"],
                                fromName: ticketList[2]["fromName"],
                                toCode: ticketList[2]["toCode"],
                                toName: ticketList[2]["toName"],
                                date: ticketList[2]["date"],
                                number: ticketList[2]["number"],
                                flyingTime: ticketList[2]["flyingTime"],
                              ),
                            ),
                            const Divider(
                              color: AppColors.mainYellowColor,
                              thickness: 1.5,
                            ),
                            GestureDetector(
                              onTap: <Future>() {
                                currentTicketIndex = 3;
                                return Navigator.of(context)
                                    .pushNamed(TicketScreen.id);
                              },
                              child: TicketViewWidget(
                                fromCode: ticketList[3]["fromCode"],
                                fromName: ticketList[3]["fromName"],
                                toCode: ticketList[3]["toCode"],
                                toName: ticketList[3]["toName"],
                                date: ticketList[3]["date"],
                                number: ticketList[3]["number"],
                                flyingTime: ticketList[3]["flyingTime"],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          )),
      floatingActionButton: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.mainYellowColor),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset("assets/images/flight_booking/plus_img.png"),
        ),
      ),
    );
  }
}

// SizedBox(height: 30),
// GestureDetector(
// onTap: <Future>() {
// return Navigator.of(context)
//     .pushNamed(TicketScreen.id);
// },
// child: TicketViewWidget(
// fromCode: ticketList[i]["fromCode"],
// fromName: ticketList[i]["fromName"],
// toCode: ticketList[i]["toCode"],
// toName: ticketList[i]["toName"],
// date: ticketList[i]["date"],
// number: ticketList[i]["number"],
// flyingTime: ticketList[i]["flyingTime"],
// ),
// ),
// if (i != ticketList.length - 1)
// const Divider(
// color: AppColors.mainYellowColor,
// thickness: 1.5,
// )
