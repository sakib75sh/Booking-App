import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class TextWithStyle3 extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool isTickteDtails;
  const TextWithStyle3(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isTickteDtails = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isTickteDtails == false
          ? AppStyle.headlineStyle3.copyWith(color: Colors.white)
          : AppStyle.headlineStyle3.copyWith(color: Colors.black),
    );
  }
}
