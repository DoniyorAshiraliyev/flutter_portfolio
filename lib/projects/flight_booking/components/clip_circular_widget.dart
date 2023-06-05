import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/flight_booking/constants/colors.dart';

class ClipCircularWidget extends StatelessWidget {
  const ClipCircularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 20,
          width: 15,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: AppColors.mainGreenColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: LayoutBuilder(
                builder: (BuildContext, BoxConstraints constraints) {
              print("the width is${constraints.constrainWidth()}");
              return Flex(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                      (constraints.constrainWidth() / 15).floor(),
                      (index) => SizedBox(
                            width: 5,
                            height: 1,
                            child: DecoratedBox(
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade700),
                            ),
                          )));
            }),
          ),
        ),
        const SizedBox(
          height: 20,
          width: 15,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: AppColors.mainGreenColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )),
          ),
        ),
      ],
    );
  }
}
