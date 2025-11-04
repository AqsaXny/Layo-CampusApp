import 'package:flutter/material.dart';
import 'package:kuchi_notes/Components/note_item.dart';

class Carouselnotes extends StatelessWidget {
  final List<Map<String, String>> notes;
  const Carouselnotes({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: notes
            .map(
              (note) => Noteitems(
                noteTitle: note['title'] ?? '',
                description: note['content'] ?? '',
              ),
            )
            .toList(),
      ),
    );
  }
}
