import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class TextWithStyle3 extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextWithStyle3(
      {super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyle.headlineStyle3.copyWith(color: Colors.white),
    );
  }
}
