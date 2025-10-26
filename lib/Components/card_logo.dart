import 'package:flutter/material.dart';

class CardLogo extends StatelessWidget {
  const CardLogo({super.key, required this.iconItem, required this.descript});
  final IconData iconItem;
  final String descript;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconItem, color: Colors.grey, size: 100),
            Text(
              descript,
              style: TextStyle(color: Colors.blueGrey, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
