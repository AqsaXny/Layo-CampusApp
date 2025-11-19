import 'package:dosenq/About/aboutpage.dart';
import 'package:dosenq/Home/myhome.dart';
import 'package:dosenq/Location/locationpage.dart';
import 'package:dosenq/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuchi Notesapp',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Homepage(),
        '/location': (context) => Locationpage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}
