import 'package:flutter/material.dart';
import 'package:vamp/ui/pages/home_page.dart';
import '../ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/quest",
      routes: {
        "/quest": (context) => const QuestPage(),
        "/home": ((context) => const HomePage())
      },
    );
  }
}
