import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app/src/home.dart';
import 'package:ticket_app/src/profile.dart';
import 'package:ticket_app/src/search.dart';
import 'package:ticket_app/src/tickets.dart';

class Routes {
  static const String home = '/';
  static const String search = '/search';
  static const String tickets = '/tickets';
  static const String profile = '/profile';
}

class RoutePages {
  static final router = GoRouter(routes: [
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
  ]);
}
