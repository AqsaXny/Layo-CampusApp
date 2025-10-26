import 'package:flutter/material.dart';
import 'package:kuchi_notes/Home/myhome.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Column(children: [Homepage()])),
    );
  }
}
