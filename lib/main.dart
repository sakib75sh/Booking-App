import 'package:flutter/material.dart';
import 'package:ticket_app/route/routes.dart';

class TestClass {
  int x;
  int y;
  TestClass({required this.x, required this.y});
  //..........CopyWith................
  TestClass copyWith({int? x, int? y}) {
    return TestClass(x: x ?? this.x, y: y ?? this.y);
  }
}

void main() {
  runApp(const MyApp());

  // var test = TestClass(x: 0, y: 2);
  // print(";llllllllllllllllllllllllllllllllllllllllllll");
  // print(test.x);
  // //...............
  // var newTest = test.copyWith(x: 10);
  // print(newTest.x);
  // //.................
  // var newTest2 = newTest.copyWith(x: 20);
  // print(newTest2.x);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RoutePages.router,
      // home: App(),
    );
  }
}
