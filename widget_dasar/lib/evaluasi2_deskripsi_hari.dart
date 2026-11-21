import 'package:flutter/material.dart';

void main() {
  runApp(const Evaluasi2App());
}

class Evaluasi2App extends StatelessWidget {
  const Evaluasi2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evaluasi 2 - Deskripsi Hari',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 4,
        ),
      ),
      home: const DeskripsiHariPage(),
    );
  }
}

class DeskripsiHariPage extends StatefulWidget {
  const DeskripsiHariPage({super.key});

  @override
  State<DeskripsiHariPage> createState() => _DeskripsiHariPageState();
}

class _DeskripsiHariPageState extends State<DeskripsiHariPage> {
  String _selectedHari = 'Belum Ada';
  String _deskripsiHari = 'Silakan klik salah satu tombol hari di bawah.';

  final Map<String, String> _dataHari = {
    'Senin': 'Hari yang luar biasa untuk memulai pekerjaanmu.',
    'Selasa': 'Tetap semangat mengerjakan tugas.',
    'Rabu': 'Selalu bahagia dan bersyukur dengan apa yang telah diperoleh.',
    'Kamis': 'Kerja keras untuk menggapai cita-cita.',
    'Jumat': 'Jangan lupa untuk beribadah.',
    'Sabtu': 'Selamat weekend.',
    'Minggu': 'Manfaatkan hari minggumu untuk istrahat.',
  };

  void _pilihHari(String hari) {
    setState(() {
      _selectedHari = hari;
      _deskripsiHari = _dataHari[hari] ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Evaluasi 2: Deskripsi Hari'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Tampilan Hasil Deskripsi
            Card(
              color: Colors.blue.shade50,
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Hari: $_selectedHari',
                      style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      _deskripsiHari,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Pilih Hari:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12.0),
            // Tombol-tombol hari
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              alignment: WrapAlignment.center,
              children: _dataHari.keys.map((hari) {
                final isSelected = _selectedHari == hari;
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected ? Colors.blue.shade800 : null,
                    foregroundColor: isSelected ? Colors.white : null,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 12.0,
                    ),
                  ),
                  onPressed: () => _pilihHari(hari),
                  child: Text(
                    hari,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
