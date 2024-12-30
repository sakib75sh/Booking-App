import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/src/widgets/app_double_text.dart';
import 'package:ticket_app/src/widgets/ticket_view.dart';
import 'package:ticket_app/styles/media_path.dart';
import 'package:ticket_app/styles/styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
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
                const AppDoubleText(
                  leadingText: 'Upcomming Flights',
                  endText: 'View all',
                ),
                const SizedBox(
                  height: 15,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TicketView(),
                      SizedBox(
                        width: 15,
                      ),
                      TicketView(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
