import 'package:flutter/material.dart';
import 'package:kuchi_notes/Home/herosection.dart';
import 'package:kuchi_notes/Home/navigation.dart';
import 'package:kuchi_notes/Home/searchsection.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
