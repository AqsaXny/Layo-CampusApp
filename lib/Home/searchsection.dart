import 'package:flutter/material.dart';
import 'package:kuchi_notes/Components/button_icon.dart';
import 'package:kuchi_notes/Components/input_column.dart';

class Searchsection extends StatelessWidget {
  const Searchsection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        spacing: 4,
        children: [
          Expanded(child: Inputcolumn(inputText: 'Cari Dosen...')),
          BtnIcon(),
        ],
      ),
    );
  }
}
