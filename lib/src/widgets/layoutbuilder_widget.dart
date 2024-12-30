import 'package:flutter/material.dart';

class LayoutbuilderWidget extends StatelessWidget {
  final int randomNumber;
  final double lineWidth;

  const LayoutbuilderWidget(
      {super.key, required this.randomNumber, this.lineWidth = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        //..... .floor() ..... return integer number ..............
        // print("a = ${(constraints.constrainWidth() / randomNumber).floor()}");

        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constraints.constrainWidth() / randomNumber).floor(),
              (index) => SizedBox(
                    height: 1,
                    width: lineWidth,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  )),
        );
      },
    );
  }
}
