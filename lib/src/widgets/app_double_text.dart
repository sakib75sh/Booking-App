import 'package:flutter/material.dart';
import 'package:ticket_app/styles/styles.dart';

class AppDoubleText extends StatelessWidget {
  final String leadingText;
  final String endText;
  final VoidCallback func;
  const AppDoubleText(
      {super.key,
      required this.leadingText,
      required this.endText,
      required this.func});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leadingText,
          style: AppStyle.headlineStyle2,
        ),
        InkWell(
          onTap: func,
          // () {
          //   //
          //   // Navigator.push<void>(
          //   //     context,
          //   //     MaterialPageRoute<void>(
          //   //       builder: (BuildContext context) => const AllTicket(),
          //   //     ));

          //   //
          //   GoRouter.of(context).goNamed(Routes.allTicket);

          //   //
          //   // context.goNamed(Routes.allTicket);
          // },
          child: Text(
            endText,
            style: AppStyle.textStyle.copyWith(color: AppStyle.primaryColor),
          ),
        )
      ],
    );
  }
}
