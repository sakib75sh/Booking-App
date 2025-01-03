import 'package:flutter/material.dart';
import 'package:ticket_app/styles/styles.dart';

class FindTicketButton extends StatelessWidget {
  const FindTicketButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your action here
        print("Button pressed");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppStyle.findTicketColor, // Button background color
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
      ),
      child: Text('find tickets',
          style: AppStyle.textStyle.copyWith(color: Colors.white)),
    );
  }
}
