import 'package:flutter/material.dart';

class HalfCircle extends StatelessWidget {
  final bool isRight;
  const HalfCircle({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 10,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isRight == true
              ? const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))
              : const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
    );
  }
}
