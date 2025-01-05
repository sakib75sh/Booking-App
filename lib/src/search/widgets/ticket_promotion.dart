import 'package:flutter/material.dart';
import 'package:ticket_app/styles/media_path.dart';
import 'package:ticket_app/styles/styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          width: size.width * 0.42,
          height: 425,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 2,
                  spreadRadius: 1,
                )
              ]),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(
                          AppMedia.planeView,
                        ),
                        fit: BoxFit.cover)),
              ),
              Text(
                "20% Discount on early booking of this flight. Don't miss",
                style: AppStyle.headlineStyle2,
              )
            ],
          ),
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  //  EdgeInsets.all(15),
                  width: size.width * 0.44,
                  height: 205,
                  decoration: BoxDecoration(
                      color: const Color(0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor survey",
                        style: AppStyle.headlineStyle2.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "Take the survey about our services and get discount",
                        style: AppStyle.headlineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -35,
                  right: -35,
                  child: Container(
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: 12, color: AppStyle.circleColor),
                    ),
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 15,
            ),

            //
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              //  EdgeInsets.all(15),
              width: size.width * 0.44,
              height: 205,
              decoration: BoxDecoration(
                  color: const Color(0xFFEC6545),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Take Love",
                    style: AppStyle.headlineStyle2.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(AppMedia.loveTest)
                  // const Image(image: )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
