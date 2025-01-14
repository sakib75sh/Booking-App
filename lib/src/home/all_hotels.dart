//...............Unused.............

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app/route/routes.dart';
import 'package:ticket_app/src/home/widgets/hotels.dart';
import 'package:ticket_app/utilis/all_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              context.goNamed(Routes.home);
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text("All Honnnnntels"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: hotelList
                .map((singleHotel) => Hotels(
                      hotel: singleHotel,
                      fullScreen: true,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
