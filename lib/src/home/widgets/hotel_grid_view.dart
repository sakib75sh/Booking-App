import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app/route/routes.dart';

import 'package:ticket_app/styles/styles.dart';

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final bool fullScreen;
  final int? hotelIndex;

  const HotelGridView(
      {super.key,
      required this.hotel,
      this.fullScreen = false,
      this.hotelIndex});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        // print(hotelIndex);
        context.goNamed(Routes.hotelDetails, extra: {'hotelIndex': hotelIndex});
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.only(
            // right: fullScreen == true ? 0 : 8,
            // bottom: fullScreen == true ? 8 : 0
            ),
        // width: fullScreen == true ? size.width * 0.85 : size.width * 0.6,
        height: 310,
        decoration: BoxDecoration(
            color: AppStyle.primaryColor,
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                    color: AppStyle.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(hotel['image']), fit: BoxFit.cover)),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Text(
              hotel['place'],
              style:
                  AppStyle.headlineStyle3.copyWith(color: AppStyle.kakiColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotel['destination'],
                  style: AppStyle.headlineStyle4.copyWith(color: Colors.white),
                ),
                Text(
                  "\$${hotel['price']}/Night",
                  style: AppStyle.headlineStyle4
                      .copyWith(color: AppStyle.kakiColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
