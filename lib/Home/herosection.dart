import 'package:flutter/material.dart';

class Herosection extends StatelessWidget {
  const Herosection({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
  //Buat Hero itu Gambar + konten
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/notes.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(
          child: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            height: 340,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
