import 'package:flutter/material.dart';

import 'package:ticket_app/styles/styles.dart';

class Hotels extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final bool fullScreen;

  const Hotels({super.key, required this.hotel, this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.only(
          right: fullScreen == true
              ? 0
              : 16, //..লজিক না হলেও কাজ করবে কারণ শুধু homePage এ use হচ্ছে
          bottom: fullScreen == true ? 16 : 0),
      width: fullScreen == true ? size.width * 0.85 : size.width * 0.6,
      height: 310,
      decoration: BoxDecoration(
          color: AppStyle.primaryColor,
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: AppStyle.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(hotel['image']), fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            hotel['place'],
            style: AppStyle.headlineStyle1.copyWith(color: AppStyle.kakiColor),
          ),
          Text(
            hotel['destination'],
            style: AppStyle.headlineStyle3.copyWith(color: Colors.white),
          ),
          Text(
            "\$${hotel['price']}/Night",
            style: AppStyle.headlineStyle1.copyWith(color: AppStyle.kakiColor),
          )
        ],
      ),
    );
  }
}
