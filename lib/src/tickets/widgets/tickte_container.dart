import 'package:flutter/material.dart';
import 'package:ticket_app/src/widgets/text_with_style3.dart';
import 'package:ticket_app/src/widgets/text_with_style4.dart';
import 'package:ticket_app/styles/media_path.dart';
import 'package:ticket_app/styles/styles.dart';

class TickteContainer extends StatelessWidget {
  final bool isPayment;
  final String leadingText1;
  final String leadingText2;
  final String endingText1;
  final String endingText2;
  const TickteContainer(
      {super.key,
      this.isPayment = false,
      required this.leadingText1,
      required this.leadingText2,
      required this.endingText1,
      required this.endingText2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppStyle.ticketDetailsBg,
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 5, right: 16, left: 16, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isPayment == false
                        ? TextWithStyle3(
                            text: leadingText1,
                            isTickteDtails: true,
                          )
                        : Row(
                            children: [
                              Image.asset(
                                AppMedia.visaIcon,
                                scale: 28,
                              ),
                              TextWithStyle3(
                                text: "***2462",
                                isTickteDtails: true,
                              )
                            ],
                          ),
                    SizedBox(
                      height: 7,
                    ),
                    TextWithStyle4(
                      text: leadingText2,
                      isticketDetails: true,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextWithStyle3(
                      text: endingText1,
                      isTickteDtails: true,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextWithStyle4(
                      text: endingText2,
                      isticketDetails: true,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
