import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app/route/routes.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.child});
  final Widget child;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.child,
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: Colors.greenAccent,
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
              switch (value) {
                case 0:
                  context.goNamed(Routes.home);
                  break;
                case 1:
                  context.goNamed(Routes.search);
                  break;
                case 2:
                  context.goNamed(Routes.tickets);
                  break;
                case 3:
                  context.goNamed(Routes.profile);
                  break;
                default:
                  context.goNamed(Routes.home);
              }
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                  label: "Tickets"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                  label: "Profile"),
            ]));
  }
}
