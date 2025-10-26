import 'package:flutter/material.dart';
import 'package:kuchi_notes/Components/card_logo.dart';

class Navigationsection extends StatelessWidget {
  const Navigationsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      padding: EdgeInsets.all(20),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          CardLogo(
            iconItem: Icons.note_add_rounded,
            descript: 'Tambah Catatan',
          ),
          CardLogo(iconItem: Icons.image, descript: 'Koleksi Waifu'),
          CardLogo(iconItem: Icons.headphones, descript: 'Playlist Musik'),
          CardLogo(iconItem: Icons.phone, descript: 'Kontak'),
        ],
      ),
    );
  }
}
