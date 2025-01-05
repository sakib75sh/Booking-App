import 'package:flutter/material.dart';
import 'package:ticket_app/src/tickets/widgets/tickte_container.dart';
import 'package:ticket_app/src/widgets/big_dot.dart';
import 'package:ticket_app/src/widgets/layoutbuilder_widget.dart';
import 'package:ticket_app/src/widgets/text_with_style3.dart';
import 'package:ticket_app/src/widgets/text_with_style4.dart';
import 'package:ticket_app/src/widgets/ticket_view.dart';

import 'package:ticket_app/utilis/all_json.dart';

class TicketDetails extends StatelessWidget {
  const TicketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // margin: EdgeInsets.symmetric(horizontal: 20),
          // height: 400,
          width: size.width * 0.81 + 16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.only(right: fullScreen == true ? 0 : 16),
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Column(
                  children: [
                    //------show Departure and destination with icons
                    Row(
                      children: [
                        const TextWithStyle3(
                          text: "NYC",
                          isTickteDtails: true,
                        ),
                        Expanded(child: Container()),
                        const BigDot(
                          isTicketDetails: true,
                        ),
                        Expanded(
                            child: Stack(
                          children: [
                            Center(
                                child: Transform.rotate(
                              angle: 1.57,
                              child: const
                                  // Text("plane")
                                  Icon(
                                Icons.local_airport_rounded,
                                color: Colors.black,
                              ),
                            ))
                          ],
                        )),
                        const BigDot(
                          isTicketDetails: true,
                        ),
                        Expanded(child: Container()),
                        const TextWithStyle3(
                          text: "SAH",
                          isTickteDtails: true,
                        )
                      ],
                    ),

                    //------show Departure and destination with icons
                    Row(
                      children: [
                        const SizedBox(
                          width: 100,
                          child: TextWithStyle4(
                            text: "London",
                            isticketDetails: true,
                          ),
                        ),
                        Expanded(child: Container()),
                        const TextWithStyle4(
                          text: "flying_time",
                          isticketDetails: true,
                        ),
                        Expanded(child: Container()),
                        const SizedBox(
                            width: 100,
                            child: TextWithStyle4(
                              text: "name",
                              isticketDetails: true,
                              align: TextAlign.end,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const LayoutbuilderWidget(
                  randomNumber: 14,
                  lineWidth: 6,
                  isTicketDetails: true,
                ),
              ),
              Container(
                // margin: EdgeInsets.only(right: fullScreen == true ? 0 : 16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  // borderRadius: const BorderRadius.only(
                  //     bottomLeft: Radius.circular(21),
                  //     bottomRight: Radius.circular(21)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5, right: 16, left: 16, bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWithStyle3(
                                text: "date",
                                isTickteDtails: true,
                              ),
                              TextWithStyle4(
                                text: "Date",
                                isticketDetails: true,
                              )
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextWithStyle3(
                                text: 'departure_time',
                                isTickteDtails: true,
                              ),
                              TextWithStyle4(
                                text: "Departure time",
                                isticketDetails: true,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextWithStyle3(
                                text: 'number'.toString(),
                                isTickteDtails: true,
                              ),
                              const TextWithStyle4(
                                text: "Number",
                                isticketDetails: true,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Divider(
                    height: 0,
                  )),
              const TickteContainer(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const LayoutbuilderWidget(
                  randomNumber: 14,
                  lineWidth: 6,
                  isTicketDetails: true,
                ),
              ),
              const TickteContainer(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const LayoutbuilderWidget(
                  randomNumber: 14,
                  lineWidth: 6,
                  isTicketDetails: true,
                ),
              ),
              const TickteContainer(),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Divider(
                    height: 0,
                  )),
              Container(
                // margin: EdgeInsets.only(right: fullScreen == true ? 0 : 16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5, right: 16, left: 16, bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWithStyle3(
                                text: "date",
                                isTickteDtails: true,
                              ),
                              TextWithStyle4(
                                text: "Date",
                                isticketDetails: true,
                              )
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextWithStyle3(
                                text: 'departure_time',
                                isTickteDtails: true,
                              ),
                              TextWithStyle4(
                                text: "Departure time",
                                isticketDetails: true,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextWithStyle3(
                                text: 'number'.toString(),
                                isTickteDtails: true,
                              ),
                              const TextWithStyle4(
                                text: "Number",
                                isticketDetails: true,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ticketList
              .take(1)
              .map((singleTicket) => TicketView(
                    fullScreen: true,
                    ticket: singleTicket,
                  ))
              .toList(),
        )
      ],
    );
  }
}
