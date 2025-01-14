import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app/route/routes.dart';
import 'package:ticket_app/src/home/widgets/hotel_grid_view.dart';

import 'package:ticket_app/styles/styles.dart';
import 'package:ticket_app/utilis/all_json.dart';

class AllHotels1 extends StatelessWidget {
  const AllHotels1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "All Hotels",
          style: AppStyle.headlineStyle1,
        ),
        leading: InkWell(
            onTap: () {
              context.goNamed(Routes.home);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,

              childAspectRatio:
                  0.9, //1 এর কম  হলে দৈর্ঘ্য বাড়বে আর বড় হলে প্রস্থ বাড়বে
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              var singleHotel = hotelList[index];
              return HotelGridView(
                hotel: singleHotel,
                hotelIndex: index,
              );
            }),
      ),
    );
  }
}
