import 'package:flutter/material.dart';

class CardLogo extends StatelessWidget {
  const CardLogo({super.key, required this.iconItem, required this.descript});
  final IconData iconItem;
  final String descript;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.all(Radius.circular(8)),
      child: Card(
        shadowColor: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconItem, color: Colors.grey, size: 80),
            SizedBox(height: 15),
            Text(descript, style: TextStyle(color: Colors.grey, fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
