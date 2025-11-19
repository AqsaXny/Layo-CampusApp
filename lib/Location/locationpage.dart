import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'dart:convert';

class Locationpage extends StatefulWidget {
  const Locationpage({super.key});

  @override
  State<Locationpage> createState() => _LocationPage();
}

class _LocationPage extends State<Locationpage> {
  Map<String, dynamic> data = {};
  bool loading = false;

  Future<void> fetchData() async {
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
    final locationText = data['location'] ?? 'Kosong';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Lokasi Dosen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: fetchData,
        child: loading
            ? ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: const [
                  SizedBox(
                    height: 300,
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ],
              )
            : ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 40,
                            color: Colors.blue,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Saat ini dosen berada di',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            locationText,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  const Text(
                    'Detail Lokasi',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 14),

                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.location_on, color: Colors.blue),
                      title: const Text(
                        'Lokasi',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(locationText),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.monitor_heart_outlined, color: Colors.blue),
                      title: const Text(
                        'Status',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(data['status'] ?? 'Kosong'),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.schedule, color: Colors.blue),
                      title: const Text(
                        'Terakhir Diperbarui',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        data['updatedAt'] == null
                            ? 'Kosong'
                            : formatUpdatedAt(data['updatedAt']),
                      ),
                    ),
                  ),

                  const SizedBox(height: 22),

                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 160,
                        maxWidth: 220,
                      ),
                      child: ElevatedButton(
                        onPressed: fetchData,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          elevation: 3,
                        ),
                        child: const Text(
                          'Perbarui Lokasi',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                ],
              ),
      ),
    );
  }
}
