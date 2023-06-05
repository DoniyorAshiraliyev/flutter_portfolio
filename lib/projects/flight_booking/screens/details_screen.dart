import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/flight_booking/components/clip_circular_widget.dart';
import 'package:flutter_portfolio/projects/flight_booking/components/info_view_widget.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/colors.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/flights_info_list.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/text_styles.dart';


class DetailsScreen extends StatefulWidget {
  static const String id = "detail_screen";

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainGreenColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                  "assets/images/flight_booking/map_rotate_img.png"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 500,
                                      width: 200,
                                      child: RotatedBox(
                                        quarterTurns: 1,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Ref. " +
                                                    ticketList[
                                                            currentTicketIndex]
                                                        ["number"],
                                                style: AppTextStyles
                                                    .detailRefTextStyle,
                                              ),
                                              const Divider(
                                                color: AppColors.mainGreenColor,
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              InfoViewWidget(
                                                  ticketScreen: false,
                                                  dataIndex: 0)
                                            ]),
                                      )),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/images/flight_booking/exit_img.png",
                                height: 20,
                                width: 20,
                              ),
                              Image.asset(
                                "assets/images/flight_booking/delta_img.png",
                                height: 200,
                                width: 45,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const ClipCircularWidget(),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, bottom: 30, top: 30),
                          child: Image.asset(
                              "assets/images/flight_booking/barcode_img.png")),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
