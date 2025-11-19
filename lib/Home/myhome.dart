import 'package:dosenq/Home/herosection.dart';
import 'package:dosenq/Home/navigation.dart';
import 'package:dosenq/Home/searchsection.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image/DosenQ.png'),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
        title: Text(
          'DosenQ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                offset: Offset(0, 1),
                blurRadius: 3.0,
                color: Colors.black45,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_rounded, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Herosection(
                  title: 'Selamat Datang,',
                  description: 'Cari lokasi dosenmu sekarang!',
                ),
                Positioned(
                  bottom: -25,
                  left: 0,
                  right: 0,
                  child: Searchsection(),
                ),
              ],
            ),
            SizedBox(height: 40),
            Navigationsection(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
