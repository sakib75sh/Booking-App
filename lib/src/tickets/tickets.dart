import 'package:flutter/material.dart';
import 'package:ticket_app/src/home/side%20bar/side_bar.dart';

import 'package:ticket_app/src/search/widgets/floating_dot.dart';
import 'package:ticket_app/src/tickets/widgets/ticket_details.dart';
import 'package:ticket_app/src/tickets/widgets/ticket_tab.dart';
import 'package:ticket_app/src/widgets/ticket_view.dart';

import 'package:ticket_app/styles/styles.dart';
import 'package:ticket_app/utilis/all_json.dart';

class Tickets extends StatelessWidget {
  const Tickets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Tickets",
          style: AppStyle.headlineStyle1.copyWith(fontSize: 35),
        ),
      ),
      drawer: SideBar(),
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
                    ticket: ticketList[2],
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
