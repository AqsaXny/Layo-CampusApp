import 'package:flutter/material.dart';

class Noteitems extends StatelessWidget {
  const Noteitems({
    super.key,
    required this.noteTitle,
    // required this.noteTag,
    required this.description,
  });
  final String noteTitle;
  // final Array noteTag;
  final String description;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Card(
            color: Colors.blue[200],
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    noteTitle,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      description,
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
