import 'package:flutter/material.dart';
import 'package:ticket_app/src/widgets/text_with_style3.dart';
import 'package:ticket_app/src/widgets/text_with_style4.dart';

class TickteContainer extends StatelessWidget {
  const TickteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            padding:
                const EdgeInsets.only(top: 5, right: 16, left: 16, bottom: 16),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextWithStyle3(
                      text: 'number'.toString(),
                      isTickteDtails: true,
                    ),
                    const TextWithStyle3(
                      text: "Number",
                      isTickteDtails: true,
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
