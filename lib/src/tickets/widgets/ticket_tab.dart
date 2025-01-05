import 'package:flutter/material.dart';

class TicketTab extends StatelessWidget {
  const TicketTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFFF4F6FD)),
        child: const Row(children: [
          AppTabs(
            tabText: 'Upcomming',
            isTapped: true,
          ),
          AppTabs(
            tabText: 'Previous',
            isRightTab: true,
          )
        ]));
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool isRightTab;
  final bool isTapped;

  const AppTabs(
      {super.key,
      required this.tabText,
      this.isRightTab = false,
      this.isTapped = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * .5 - 15,
      decoration: BoxDecoration(
          color: isTapped == true ? Colors.white : Colors.transparent,
          borderRadius: isRightTab == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(
          child: Text(
        tabText,
      )),
    );
  }
}
