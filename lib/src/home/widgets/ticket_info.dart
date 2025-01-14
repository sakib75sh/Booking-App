import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app/route/routes.dart';
import 'package:ticket_app/src/search/widgets/floating_dot.dart';
import 'package:ticket_app/src/tickets/widgets/ticket_details.dart';
import 'package:ticket_app/src/tickets/widgets/ticket_tab.dart';
import 'package:ticket_app/src/widgets/ticket_view.dart';

import 'package:ticket_app/styles/styles.dart';
import 'package:ticket_app/utilis/all_json.dart';

class TicketInfo extends StatelessWidget {
  final int? ticketIndex;
  final int? ticketIndexH;
  final bool? isFromAllTicket;
  final bool? fromHOme;

  const TicketInfo(
      {super.key,
      this.isFromAllTicket,
      this.ticketIndex,
      this.ticketIndexH,
      this.fromHOme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        centerTitle: true,
        leading:
            // isFromAllTicket == true
            //     ?
            InkWell(
          onTap: () => fromHOme == true
              ? context.goNamed(Routes.home)
              : context.goNamed(Routes.allTicket),
          child: Icon(Icons.arrow_back),
        ),
        // : null,
        title: Text(
          fromHOme == true ? 'Ticket Details' : "Tickets",
          style: AppStyle.headlineStyle1.copyWith(fontSize: 35),
        ),
      ),
      body: Stack(
        children: [
          ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              children: [
                const SizedBox(
                  height: 20,
                ),
                const TicketTab(),
                const SizedBox(
                  height: 20,
                ),
                const TicketDetails(),
                Center(
                  child: TicketView(
                    //..........................//
                    ticket: ticketList[
                        ticketIndex == null ? ticketIndexH! : ticketIndex!],
                    fullScreen: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ]),
          FloatingDot(),
          FloatingDot(
            isRight: true,
          )
        ],
      ),
    );
  }
}
