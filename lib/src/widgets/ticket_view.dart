import 'package:flutter/material.dart';
import 'package:ticket_app/src/widgets/half_circle.dart';
import 'package:ticket_app/src/widgets/layoutbuilder_widget.dart';
import 'package:ticket_app/src/widgets/big_dot.dart';
import 'package:ticket_app/src/widgets/text_with_style3.dart';
import 'package:ticket_app/src/widgets/text_with_style4.dart';
import 'package:ticket_app/styles/styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool fullScreen;
  const TicketView({super.key, required this.ticket, this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      // height: 185,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: fullScreen == true ? 0 : 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppStyle.ticketBlue,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))),
            child: Column(
              children: [
                //------show Departure and destination with icons
                Row(
                  children: [
                    TextWithStyle3(
                      text: ticket["from"]["code"],
                    ),
                    Expanded(child: Container()),
                    const BigDot(),
                    Expanded(
                        child: Stack(
                      children: [
                        const SizedBox(
                          height: 24,
                          child: LayoutbuilderWidget(
                            randomNumber: 6,
                          ),
                        ),
                        Center(
                            child: Transform.rotate(
                          angle: 1.57,
                          child: const
                              // Text("plane")
                              Icon(
                            Icons.local_airport_rounded,
                            color: Colors.white,
                          ),
                        ))
                      ],
                    )),
                    const BigDot(),
                    Expanded(child: Container()),
                    TextWithStyle3(text: ticket["to"]["code"])
                  ],
                ),

                //------show Departure and destination with icons
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextWithStyle4(
                        text: ticket["from"]["name"],
                      ),
                    ),
                    Expanded(child: Container()),
                    TextWithStyle4(text: ticket["flying_time"]),
                    Expanded(child: Container()),
                    SizedBox(
                        width: 100,
                        child: TextWithStyle4(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                        )),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: fullScreen == true ? 0 : 16),
            decoration: BoxDecoration(
                color: AppStyle.ticketOrange,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21))),
            child: Column(
              children: [
                Container(
                  color: AppStyle.ticketOrange,
                  child: const Row(
                    children: [
                      HalfCircle(
                        isRight: true,
                      ),
                      Expanded(
                          child: LayoutbuilderWidget(
                        randomNumber: 16,
                        lineWidth: 6,
                      )),
                      HalfCircle(
                        isRight: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, right: 16, left: 16, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWithStyle3(text: ticket["date"]),
                          const TextWithStyle4(text: "Date")
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextWithStyle3(text: ticket['departure_time']),
                          const TextWithStyle4(text: "Departure time"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextWithStyle3(
                            text: ticket['number'].toString(),
                          ),
                          const TextWithStyle4(
                            text: "Number",
                          )
                        ],
                      )
                    ],
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.only(
                //       top: 5, right: 16, left: 16, bottom: 16),
                //   child: Column(
                //     children: [
                //       Row(
                //         children: [
                //           const SizedBox(
                //               width: 50, child: TextWithStyle3(text: "1 MAY")),
                //           Expanded(child: Container()),
                //           const TextWithStyle3(text: "08:00 AM"),
                //           Expanded(child: Container()),
                //           const SizedBox(
                //               width: 50,
                //               child: TextWithStyle3(
                //                 text: "23",
                //                 align: TextAlign.end,
                //               )),
                //         ],
                //       ),
                //       Row(
                //         children: [
                //           const SizedBox(
                //               width: 80, child: TextWithStyle4(text: "Date")),
                //           Expanded(child: Container()),
                //           const TextWithStyle4(text: "Departure time"),
                //           Expanded(child: Container()),
                //           const SizedBox(
                //               width: 80,
                //               child: TextWithStyle4(
                //                 text: "Number",
                //                 align: TextAlign.end,
                //               )),
                //         ],
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
