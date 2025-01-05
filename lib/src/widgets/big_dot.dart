import 'package:flutter/material.dart';
import 'package:ticket_app/styles/styles.dart';

class BigDot extends StatelessWidget {
  final bool isTicketDetails;
  const BigDot({super.key, this.isTicketDetails = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 20,
      // width: 10,
      padding: const EdgeInsets.all(3),

      decoration: BoxDecoration(
          border: Border.all(
              width: 2.5,
              color: isTicketDetails == false
                  ? Colors.white
                  : AppStyle.ticketDetailsDot),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
