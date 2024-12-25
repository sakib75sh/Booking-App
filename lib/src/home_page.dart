import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/src/home.dart';
import 'package:ticket_app/src/profile.dart';
import 'package:ticket_app/src/search.dart';
import 'package:ticket_app/src/tickets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final appScreen = [
    const Center(
      child: Home(),
    ),
    const Center(
      child: Search(),
    ),
    const Center(
      child: Tickets(),
    ),
    const Center(
      child: Profile(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My tickets"),
          centerTitle: true,
        ),
        body: appScreen[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: Colors.greenAccent,
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
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
