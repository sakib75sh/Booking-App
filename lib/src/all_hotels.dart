import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_app/route/routes.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              context.goNamed(Routes.home);
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text("All Hotels"),
        centerTitle: true,
      ),
    );
  }
}
