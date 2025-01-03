import 'package:flutter/material.dart';
import 'package:ticket_app/src/search/widgets/find_ticket_button.dart';
import 'package:ticket_app/src/search/widgets/route_searchbox.dart';
import 'package:ticket_app/src/search/widgets/ticket_hotel_tab.dart';
import 'package:ticket_app/styles/styles.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          Text(
            "What are\nyou looking for?",
            style: AppStyle.headlineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          const TicketHotelTab(),
          const SizedBox(
            height: 20,
          ),
          const RouteSearchbox(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const SizedBox(
            height: 12,
          ),
          const RouteSearchbox(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          const SizedBox(
            height: 20,
          ),
          const FindTicketButton()
        ],
      ),
    );
  }
}
