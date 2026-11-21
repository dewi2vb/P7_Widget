import 'package:flutter/material.dart';

void main() {
  runApp(const Evaluasi1App());
}

class Evaluasi1App extends StatelessWidget {
  const Evaluasi1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evaluasi 1 - Tabel Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 4,
        ),
      ),
      home: const TabelMahasiswaPage(),
    );
  }
}

class TabelMahasiswaPage extends StatelessWidget {
  const TabelMahasiswaPage({super.key});

  Widget _buildCell(String text, {bool isHeader = false, int flex = 1}) {
    return Expanded(
      flex: flex,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          color: isHeader ? Colors.blue.shade100 : Colors.white,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            fontSize: isHeader ? 16.0 : 14.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Evaluasi 1: Tabel Data Mahasiswa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Tabel Mahasiswa (Menggunakan Row & Column)',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            // Header Tabel
            Row(
              children: <Widget>[
                _buildCell('No', isHeader: true, flex: 1),
                _buildCell('NIM', isHeader: true, flex: 2),
                _buildCell('NAMA', isHeader: true, flex: 3),
              ],
            ),
            // Baris 1
            Row(
              children: <Widget>[
                _buildCell('1', flex: 1),
                _buildCell('1106315', flex: 2),
                _buildCell('Depandi Enda', flex: 3),
              ],
            ),
            // Baris 2
            Row(
              children: <Widget>[
                _buildCell('2', flex: 1),
                _buildCell('1106316', flex: 2),
                _buildCell('Budi Handoyo', flex: 3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
