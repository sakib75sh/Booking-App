import 'package:flutter/material.dart';
import 'package:ticket_app/styles/styles.dart';

class FloatingDot extends StatelessWidget {
  final bool isRight;
  const FloatingDot({super.key, this.isRight = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.256,
      left: isRight == false ? size.width * 0.095 - 16 : null,
      right: isRight == true ? size.width * 0.095 - 16 : null,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: AppStyle.textColor)),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: AppStyle.textColor,
        ),
      ),
    );
  }
}
