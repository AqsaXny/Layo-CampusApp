import 'package:dosenq/Components/button_icon.dart';
import 'package:dosenq/Components/input_column.dart';
import 'package:flutter/material.dart';

class Searchsection extends StatelessWidget {
  const Searchsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(child: Inputcolumn(inputText: 'Cari Nama Dosen...')),
          SizedBox(width: 10),
          BtnIcon(),
        ],
      ),
    );
  }
}
