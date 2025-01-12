import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app/route/routes.dart';
import 'package:ticket_app/src/home/widgets/hotels.dart';
import 'package:ticket_app/src/home/widgets/ticket_info.dart';
import 'package:ticket_app/src/widgets/app_double_text.dart';
import 'package:ticket_app/src/widgets/ticket_view.dart';
import 'package:ticket_app/styles/media_path.dart';
import 'package:ticket_app/styles/styles.dart';
import 'package:ticket_app/utilis/all_json.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // List ticketlists = ticketList;
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      // appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyle.headlineStyle3,
                        ),
                        Text("Book Tickets", style: AppStyle.headlineStyle1)
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          AppMedia.logo,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 48,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Search",
                              prefixIcon: const Icon(
                                FluentSystemIcons.ic_fluent_search_regular,
                                color: Color(0xFFBFC205),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppDoubleText(
                  leadingText: 'Upcomming Flights',
                  endText: 'View all',
                  func: () => GoRouter.of(context).goNamed(Routes.allTicket),
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: ticketList
                            .take(3)
                            .map((singleTicket) => GestureDetector(
                                  onTap: () {
                                    var index =
                                        ticketList.indexOf(singleTicket);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TicketInfo(
                                                ticketIndexH: index,
                                              )),
                                    );

                                    // var index =
                                    //     ticketList.indexOf(singleTicket);
                                    // // Navigator.pushNamed(context, Routes.tickets);
                                    // context.goNamed(Routes.ticketInfo,
                                    //     extra: {'index': index});
                                    // print('tapped $index');
                                  },
                                  child: TicketView(
                                    ticket: singleTicket,
                                  ),
                                ))
                            .toList())

                    // [
                    //   TicketView(),
                    //   SizedBox(
                    //     width: 15,
                    //   ),
                    //   TicketView(),
                    // ],
                    ),
                AppDoubleText(
                  leadingText: 'Hotels',
                  endText: 'View all',
                  func: () => GoRouter.of(context).goNamed(Routes.allHotels),
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: hotelList
                            .take(3)
                            .map((singleHotel) => Hotels(
                                  hotel: singleHotel,
                                ))
                            .toList())),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
