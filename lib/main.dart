import 'package:flutter/material.dart';
import 'package:kuchi_notes/About/aboutpage.dart';
import 'package:kuchi_notes/Help/Helppage.dart';
import 'package:kuchi_notes/Home/myhome.dart';
import 'package:kuchi_notes/Location/locationpage.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuchi Notesapp',
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/location': (context) => Locationpage(),
        '/about': (context) => Aboutpage(),
      },
    );
  }
}
