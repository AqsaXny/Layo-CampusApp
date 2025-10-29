import 'package:flutter/material.dart';
import 'package:kuchi_notes/Home/herosection.dart';
import 'package:kuchi_notes/Home/navigation.dart';
import 'package:kuchi_notes/Home/searchsection.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Padding(padding: EdgeInsets.all(2)),
        backgroundColor: Colors.blue[900],
        title: Text(
          'Home Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Herosection(
                title: 'Kuchi Notes',
                description: 'Aplikasi Catatan Pribadi By FelienZ',
              ),
            ),
            Searchsection(),
            Navigationsection(),
          ],
        ),
      ),
    );
  }
}
