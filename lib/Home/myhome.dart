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
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('assets/image/Kuchistore.png'),
              fit: BoxFit.cover,
            ),
            border: Border.all(width: 8),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Layo Campus',
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
                title: 'Layo Campus',
                description: 'Aplikasi Pelacak Lokasi Dosen',
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
