import 'package:flutter/material.dart';
import 'package:ticket_app/styles/styles.dart';

class AppDoubleText extends StatelessWidget {
  final String leadingText;
  final String endText;
  const AppDoubleText(
      {super.key, required this.leadingText, required this.endText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leadingText,
          style: AppStyle.headlineStyle2,
        ),
        Text(
          endText,
          style: AppStyle.textStyle.copyWith(color: AppStyle.primaryColor),
        )
      ],
    );
  }
}
