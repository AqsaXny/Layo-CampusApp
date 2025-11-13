import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart'; // <--- import intl!
import 'dart:convert';

class Locationpage extends StatefulWidget {
  const Locationpage({super.key});

  @override
  State<Locationpage> createState() => _LocationPage();
}

class _LocationPage extends State<Locationpage> {
  Map<String, dynamic> data = {};
  bool loading = false;

  void fetchData() async {
    setState(() => loading = true);
    final res = await http.get(Uri.parse('https://spidah.my.id/dimana.php'));
    if (res.statusCode == 200) {
      final parsed = jsonDecode(res.body);
      setState(() {
        data = parsed;
        loading = false;
      });
    } else {
      setState(() => loading = false);
    }
  }

  String formatUpdatedAt(String raw) {
    // raw: '202611071405'
    if (raw.length != 12) return raw;
    try {
      final date = DateTime.parse(
        '${raw.substring(0, 4)}-${raw.substring(4, 6)}-${raw.substring(6, 8)}'
        ' ${raw.substring(8, 10)}:${raw.substring(10, 12)}',
      );
      return DateFormat('dd MMM yyyy HH:mm').format(date);
    } catch (e) {
      return raw;
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Lokasi Dosen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : data.isEmpty
          ? const Center(child: Text('No data found!'))
          : ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.monitor_heart_outlined),
                  title: const Text('Status'),
                  subtitle: Text(data['status'] ?? 'Kosong'),
                ),
                ListTile(
                  leading: Icon(Icons.refresh),
                  title: const Text('Updated At'),
                  subtitle: Text(
                    data['updatedAt'] == null
                        ? 'Kosong'
                        : formatUpdatedAt(data['updatedAt']),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: const Text('Location'),
                  subtitle: Text(data['location'] ?? 'Kosong'),
                ),
              ],
            ),
    );
  }
}
