// import 'package:flutter/material.dart';
// import 'package:ticket_app/src/home/home.dart';
// import 'package:ticket_app/src/profile/profile.dart';
// import 'package:ticket_app/src/search/search.dart';
// import 'package:ticket_app/src/tickets/tickets.dart';

// class App extends StatefulWidget {
//   const App({super.key});

//   @override
//   State<App> createState() => _HomePageState();
// }

// class _HomePageState extends State<App> {
//   int selectedIndex = 0;
//   final appScreen = [
//     const Center(
//       child: Home(),
//     ),
//     const Center(
//       child: Search(),
//     ),
//     const Center(
//       child: Tickets(),
//     ),
//     const Center(
//       child: Profile(),
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("My tickets"),
//         centerTitle: true,
//       ),
//       body: Row(
//         children: [
//           TextWithStyle3(
//             text: "NYC",
//             // text: ticket["from"]["code"],
//           ),
//           Expanded(child: Container()),
//           const BigDot(),
//           Expanded(
//               child: Stack(
//             children: [
//               const SizedBox(
//                 height: 24,
//                 child: LayoutbuilderWidget(
//                   randomNumber: 6,
//                 ),
//               ),
//               Center(
//                   child: Transform.rotate(
//                 angle: 1.57,
//                 child: const
//                     // Text("plane")
//                     Icon(
//                   Icons.local_airport_rounded,
//                   color: Colors.white,
//                 ),
//               ))
//             ],
//           )),
//           const BigDot(),
//           Expanded(child: Container()),
//           TextWithStyle3(
//             text: "NYC",
//             // text: ticket["to"]["code"]
//           )
//         ],
//       ),
//     );
//   }
// }
