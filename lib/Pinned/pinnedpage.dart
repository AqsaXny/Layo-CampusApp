import 'package:flutter/material.dart';

class Pinnedpage extends StatelessWidget {
  const Pinnedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        // leading: Padding(padding: EdgeInsets.all(8)),
        title: Text(
          'Pinned Notes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(children: []),
    );
  }
}
