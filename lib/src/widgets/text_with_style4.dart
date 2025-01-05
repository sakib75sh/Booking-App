import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class TextWithStyle4 extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool isticketDetails;
  const TextWithStyle4(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isticketDetails = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isticketDetails == false
          ? AppStyle.headlineStyle4.copyWith(color: Colors.white)
          : AppStyle.headlineStyle4.copyWith(color: Colors.grey.shade300),
    );
  }
}
