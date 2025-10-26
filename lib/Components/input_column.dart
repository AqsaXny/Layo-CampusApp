import 'package:flutter/material.dart';

class Inputcolumn extends StatelessWidget {
  const Inputcolumn({super.key, required this.inputText});
  final String inputText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: inputText,
        ),
      ),
    );
  }
}
