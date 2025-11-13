import 'package:carousel_slider/carousel_slider.dart';
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
      child: CarouselSlider(
        items: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: CardLogo(
              iconItem: Icons.note_add_rounded,
              descript: 'Catatan Anda',
              targetLocation: () {
                Navigator.pushNamed(context, '/notepage');
              },
            ),
          ),
          /* SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: CardLogo(
              iconItem: Icons.push_pin,
              descript: 'Pinned Notes',
              targetLocation: () {
                Navigator.pushNamed(context, '/pinnedpage');
              },
            ),
          ), */
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: CardLogo(
              iconItem: Icons.info_outline,
              descript: 'Bantuan',
              targetLocation: () {
                Navigator.pushNamed(context, '/helppage');
              },
            ),
          ),
        ],
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.25,
          padEnds: false,
          viewportFraction: 0.55,
          enableInfiniteScroll: false,
          enlargeCenterPage: false,
        ),
      ),
    );
  }
}
