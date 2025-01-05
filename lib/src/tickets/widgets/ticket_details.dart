import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/src/tickets/widgets/tickte_container.dart';
import 'package:ticket_app/src/widgets/big_dot.dart';
import 'package:ticket_app/src/widgets/layoutbuilder_widget.dart';
import 'package:ticket_app/src/widgets/text_with_style3.dart';
import 'package:ticket_app/src/widgets/text_with_style4.dart';
import 'package:ticket_app/styles/styles.dart';
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
                decoration: BoxDecoration(
                    color: AppStyle.ticketDetailsBg,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Column(
                  children: [
                    //------show Departure and destination with icons
                    Row(
                      children: [
                        TextWithStyle3(
                          // text: "NYC",
                          text: ticketList[0]['from']['code'],
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
                              child:
                                  // Text("plane")
                                  Icon(
                                Icons.local_airport_rounded,
                                color: AppStyle.planeSecondColor,
                              ),
                            ))
                          ],
                        )),
                        const BigDot(
                          isTicketDetails: true,
                        ),
                        Expanded(child: Container()),
                        TextWithStyle3(
                          text: ticketList[0]['to']['code'],
                          isTickteDtails: true,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),

                    //------show Departure and destination with icons
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextWithStyle4(
                            text: ticketList[0]['from']['name'],
                            isticketDetails: true,
                          ),
                        ),
                        Expanded(child: Container()),
                        TextWithStyle4(
                          text: ticketList[0]['flying_time'],
                          isticketDetails: true,
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                            width: 100,
                            child: TextWithStyle4(
                              text: ticketList[0]['to']['name'],
                              isticketDetails: true,
                              align: TextAlign.end,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 10,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const LayoutbuilderWidget(
                  randomNumber: 14,
                  lineWidth: 6,
                  isTicketDetails: true,
                ),
              ),
              Container(
                // margin: EdgeInsets.only(right: fullScreen == true ? 0 : 16),
                decoration: BoxDecoration(
                  color: AppStyle.ticketDetailsBg,
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWithStyle3(
                                text: ticketList[0]['date'],
                                isTickteDtails: true,
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              TextWithStyle4(
                                text: "Date",
                                isticketDetails: true,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextWithStyle3(
                                text: ticketList[0]['departure_time'],
                                isTickteDtails: true,
                              ),
                              SizedBox(
                                height: 7,
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
                                text: ticketList[0]['number'].toString(),
                                isTickteDtails: true,
                              ),
                              SizedBox(
                                height: 7,
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
              const Divider(
                height: 20,
              ),
              const TickteContainer(
                leadingText1: 'Flutter DB',
                leadingText2: 'Passenger',
                endingText1: '5221 364869',
                endingText2: 'passport',
              ),
              Container(
                height: 20,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const LayoutbuilderWidget(
                  randomNumber: 14,
                  lineWidth: 6,
                  isTicketDetails: true,
                ),
              ),
              const TickteContainer(
                leadingText1: '364738 2827478',
                leadingText2: 'Number of E-ticket',
                endingText1: 'B2SG28',
                endingText2: 'Booking code',
              ),
              Container(
                height: 20,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const LayoutbuilderWidget(
                  randomNumber: 14,
                  lineWidth: 6,
                  isTicketDetails: true,
                ),
              ),
              const TickteContainer(
                leadingText1: '9', //it's not mater because isPayment =true
                leadingText2: 'Payment method',
                endingText1: '\$249.99',
                endingText2: 'Price',
                isPayment: true,
              ),
              const Divider(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 15),
                // margin: EdgeInsets.only(right: fullScreen == true ? 0 : 16),
                decoration: BoxDecoration(
                  color: AppStyle.ticketDetailsBg,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                ),
                child:

                    //
                    Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      data: 'https://github.com/sakib75sh',
                      barcode: Barcode.code128(),
                      drawText: false,
                    ),
                  ),
                ),
              ),

              //
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
