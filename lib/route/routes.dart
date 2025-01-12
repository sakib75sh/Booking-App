import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app/src/home/all_hotels.dart';
import 'package:ticket_app/src/home/all_ticket.dart';
import 'package:ticket_app/src/home/home.dart';
import 'package:ticket_app/src/home/widgets/ticket_info.dart';
import 'package:ticket_app/src/profile/profile.dart';
import 'package:ticket_app/src/search/search.dart';
import 'package:ticket_app/src/tickets/tickets.dart';
import 'package:ticket_app/src/widgets/bottom_nav_bar.dart';

class Routes {
  static const String home = '/';
  static const String search = '/search';
  static const String tickets = '/tickets';
  static const String profile = '/profile';
  static const String allTicket = '/all_ticket';
  static const String ticketInfo = '/ticket_info';
  static const String allHotels = '/all_hotels';
}

class RoutePages {
  static GoRouter router = GoRouter(routes: [
    ShellRoute(
      builder: (context, state, child) => BottomNavBar(child: child),
      routes: [
        GoRoute(
          path: Routes.home,
          name: Routes.home,
          pageBuilder: (context, state) => const MaterialPage(child: Home()),
        ),
        GoRoute(
          path: Routes.search,
          name: Routes.search,
          pageBuilder: (context, state) => const MaterialPage(child: Search()),
        ),
        GoRoute(
          path: Routes.tickets,
          name: Routes.tickets,
          pageBuilder: (context, state) => const MaterialPage(child: Tickets()),
        ),
        GoRoute(
          path: Routes.profile,
          name: Routes.profile,
          pageBuilder: (context, state) => const MaterialPage(child: Profile()),
        ),
      ],
    ),
    GoRoute(
      path: Routes.allTicket,
      name: Routes.allTicket,
      pageBuilder: (context, state) => const MaterialPage(child: AllTicket()),
    ),
    GoRoute(
      path: Routes.allHotels,
      name: Routes.allHotels,
      pageBuilder: (context, state) => const MaterialPage(child: AllHotels()),
    ),

    //
    GoRoute(
        path: Routes.ticketInfo,
        name: Routes.ticketInfo,
        builder: (context, state) {
          var index = state.extra as Map;
          return TicketInfo(
            ticketIndex: index['index'],
          );
        }),

    //
  ]);
}
