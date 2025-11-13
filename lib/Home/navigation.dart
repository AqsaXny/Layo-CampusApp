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
              iconItem: Icons.location_on_outlined,
              descript: 'Lokasi Dosen',
              targetLocation: () {
                Navigator.pushNamed(context, '/location');
              },
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: CardLogo(
              iconItem: Icons.info_outline,
              descript: 'About',
              targetLocation: () {
                Navigator.pushNamed(context, '/about');
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
