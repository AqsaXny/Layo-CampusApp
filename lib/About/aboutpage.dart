import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget {
  const Aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Center(child: Text('Ini Halaman About')),
    );
  }
}
