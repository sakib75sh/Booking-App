import 'package:flutter/material.dart';

class LayoutbuilderWidget extends StatelessWidget {
  final int randomNumber;
  final double lineWidth;
  final bool isTicketDetails;

  const LayoutbuilderWidget(
      {super.key,
      required this.randomNumber,
      this.lineWidth = 3,
      this.isTicketDetails = false});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        //..... .floor() ..... return integer number ..............
        // print("a = ${(constraints.constrainWidth() / randomNumber).floor()}");

        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constraints.constrainWidth() / randomNumber).floor(),
              (index) => SizedBox(
                    height: 1,
                    width: lineWidth,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isTicketDetails == false
                              ? Colors.white
                              : Colors.grey.shade400),
                    ),
                  )),
        );
      },
    );
  }
}
