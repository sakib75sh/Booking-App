import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class TextWithStyle4 extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextWithStyle4(
      {super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyle.headlineStyle4.copyWith(color: Colors.white),
    );
  }
}
