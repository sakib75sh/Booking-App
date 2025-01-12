import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app/route/routes.dart';

import 'package:ticket_app/src/widgets/ticket_view.dart';
import 'package:ticket_app/utilis/all_json.dart';

class AllTicket extends StatelessWidget {
  const AllTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              context.goNamed(Routes.home);
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text("All Tickets"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: ticketList
                .map((singleTicket) => GestureDetector(
                      onTap: () {
                        var index = ticketList.indexOf(singleTicket);
                        // Navigator.pushNamed(context, Routes.tickets);
                        context.goNamed(Routes.ticketInfo,
                            extra: {'index': index});
                        print('tapped $index');
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: TicketView(
                          ticket: singleTicket,
                          fullScreen: true,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
