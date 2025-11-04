import 'package:flutter/material.dart';
import 'package:kuchi_notes/Notes/carouselnotes.dart';

class Notepage extends StatefulWidget {
  const Notepage({super.key});
  @override
  State<Notepage> createState() => _NoteState();
}

class _NoteState extends State<Notepage> {
  List<Map<String, String>> notes = [];

  void _addNote(String title, String content) {
    setState(() {
      notes.add({"title": title, "content": content});
    });
  }

  void _showNoteDialog() {
    String title = '';
    String content = '';
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Tambah Catatan'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Judul'),
                onChanged: (value) => title = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Masukan Isi catatan'),
                onChanged: (value) => content = value,
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Batal'),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              child: Text('Simpan'),
              onPressed: () {
                _addNote(title, content);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        // leading: Padding(padding: EdgeInsets.all(8)),
        title: Text(
          'Notes Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: notes.isNotEmpty
            ? Column(children: [Carouselnotes(notes: notes)])
            : SizedBox(
                height: 700,
                width: double.infinity,
                child: Center(child: Text('Catatan Sedang Kosong')),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showNoteDialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
