import 'package:flutter/material.dart';
import 'package:kuchi_notes/Components/note_item.dart';

class Carouselnotes extends StatelessWidget {
  const Carouselnotes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Noteitems(noteTitle: 'My Kisah', description: 'Ini Adalah My Kisah'),
          Noteitems(noteTitle: 'Kuchi Kisah', description: 'Kuchi Kisah'),
          Noteitems(noteTitle: 'JavaScript', description: 'King of Ecosystem'),
        ],
      ),
    );
  }
}
