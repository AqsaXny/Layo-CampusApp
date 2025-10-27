import 'package:flutter/material.dart';
import 'package:kuchi_notes/Components/card_logo.dart';

class Navigationsection extends StatelessWidget {
  const Navigationsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: 250,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        crossAxisSpacing: 5,
        children: [
          CardLogo(
            iconItem: Icons.note_add_rounded,
            descript: 'Tambah Catatan',
            targetLocation: () {
              Navigator.pushNamed(context, '/notepage');
            },
          ),
          CardLogo(
            iconItem: Icons.info_outline,
            descript: 'Bantuan',
            targetLocation: () {
              Navigator.pushNamed(context, '/helppage');
            },
          ),
        ],
      ),
    );
  }
}
