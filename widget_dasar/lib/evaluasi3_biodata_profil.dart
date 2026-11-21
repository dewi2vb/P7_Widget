import 'package:flutter/material.dart';

void main() {
  runApp(const Evaluasi3App());
}

class Evaluasi3App extends StatelessWidget {
  const Evaluasi3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evaluasi 3 - Profil & Biodata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 4,
        ),
      ),
      home: const BiodataProfilPage(),
    );
  }
}

class BiodataProfilPage extends StatelessWidget {
  const BiodataProfilPage({super.key});

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: Colors.blue.shade700, size: 24.0),
          const SizedBox(width: 16.0),
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
              ),
            ),
          ),
          const Text(' : '),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Evaluasi 3: Profil & Biodata Diri'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            // Foto Profil
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue.shade700,
                    width: 4.0,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.0,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    'images/profile.png',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Isna Yulia',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Mahasiswa D4 Rekayasa Perangkat Lunak',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 24.0),

            // Card Biodata
            Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Informasi Pribadi',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const Divider(),
                    _buildInfoRow(
                      Icons.person,
                      'Nama Lengkap',
                      'Isna Yulia',
                    ),
                    _buildInfoRow(
                      Icons.calendar_today,
                      'Tempat, Tgl Lahir',
                      'Bengkalis, 12 Juli 2003',
                    ),
                    _buildInfoRow(
                      Icons.email,
                      'Email',
                      'isna.yulia@example.com',
                    ),
                    _buildInfoRow(
                      Icons.phone,
                      'Nomor HP',
                      '0812-3456-7890',
                    ),
                    _buildInfoRow(
                      Icons.sports_esports,
                      'Hobby',
                      'Membaca, Koding, & Desain UI/UX',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
