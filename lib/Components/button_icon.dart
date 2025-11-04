import 'package:flutter/material.dart';

class BtnIcon extends StatelessWidget {
  const BtnIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(Icons.search, color: Colors.white),
      ),
    );
  }
}
