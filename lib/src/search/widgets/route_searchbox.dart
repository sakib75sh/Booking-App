import 'package:flutter/material.dart';
import 'package:ticket_app/styles/styles.dart';

class RouteSearchbox extends StatelessWidget {
  final IconData icon;
  final String text;

  const RouteSearchbox({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: text,
          hintStyle: AppStyle.textStyle,
          prefixIcon: Icon(
            icon,
            color: AppStyle.planeColor,
            // FluentSystemIcons.ic_fluent_search_regular,
            // color: Color(0xFFBFC205),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
