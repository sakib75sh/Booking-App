import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app/route/routes.dart';
import 'package:ticket_app/styles/styles.dart';
import 'package:ticket_app/utilis/all_json.dart';

class HotelDetails extends StatelessWidget {
  final int? index;

  const HotelDetails({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Hotel Details',
      //     style: AppStyle.headlineStyle1,
      //   ),
      //   centerTitle: true,
      //   leading: InkWell(
      //       onTap: () => context.goNamed(Routes.home),
      //       child: Icon(Icons.arrow_back)),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: InkWell(
                onTap: () => context.goNamed(Routes.allHotels1),
                child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppStyle.primaryColor.withAlpha(120)),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ))),
            expandedHeight: 300,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  hotelList[index!]['place'],
                  style: AppStyle.headlineStyle1
                      .copyWith(fontSize: 20, color: Colors.white),
                ),
                background: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                          margin: EdgeInsets.all(2),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                hotelList[index!]['image'],
                                fit: BoxFit.cover,
                              ))),
                    ),
                    // Positioned(
                    //   bottom: 20,
                    //   right: 20,
                    //   child: Text(
                    //     hotelList[index!]['place'],
                    //     style: AppStyle.headlineStyle1
                    //         .copyWith(fontSize: 30, color: Colors.white),
                    //   ),
                    // )
                  ],
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location and Architecture ',
                    style: AppStyle.headlineStyle3,
                  ),
                  Text(
                    'Situated on its own artificial island along Jumeirah Beach, the Burj Al Arab is renowned for its distinctive sail-shaped silhouette, making it a prominent feature of Dubais skyline.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Accommodations',
                    style: AppStyle.headlineStyle3,
                  ),
                  Text(
                    "The hotel exclusively offers duplex suites, each lavishly furnished with panoramic views of the Arabian Gulf. Guests can expect amenities such as 24-karat gold iPads, a dedicated butler service, and access to a private beach.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "More images",
                    style: AppStyle.headlineStyle2,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return Container(
                            // color: Colors.amber,
                            margin: EdgeInsets.all(16),
                            child: Center(
                              child: Icon(
                                Icons.photo,
                                size: 200,
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
