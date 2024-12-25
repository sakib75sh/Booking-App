import 'package:flutter/material.dart';
import 'package:ticket_app/src/widgets/bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My tickets"),
        centerTitle: true,
      ),
      body: const Center(child: Text("Ticket info")),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
