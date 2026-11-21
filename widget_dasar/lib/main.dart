import 'package:flutter/material.dart';

import 'evaluasi1_tabel_mahasiswa.dart';
import 'evaluasi2_deskripsi_hari.dart';
import 'evaluasi3_biodata_profil.dart';
import 'ex01_text_widget.dart' as ex01;
import 'ex02_elevated_button.dart' as ex02;
import 'ex03_stateful_widget.dart' as ex03;
import 'ex04_row_widget.dart' as ex04;
import 'ex05_column_widget.dart' as ex05;
import 'ex06_row_column_widget.dart' as ex06;
import 'ex07_column_row_widget.dart' as ex07;
import 'ex08_profil_polbeng.dart' as ex08;
import 'ex09_edge_insets_all.dart' as ex09;
import 'ex10_edge_insets_only.dart' as ex10;
import 'ex11_softwrap.dart' as ex11;
import 'ex12_text_align.dart' as ex12;
import 'ex13_listview_image.dart' as ex13;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job VII Widget App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 4,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  // Default gambar awal
  String fileName = 'images/logo_kemdikbud.jpg';

  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          fileName = 'images/logo_kemdikbud.jpg';
          break;
        case 1:
          fileName = 'images/logo_polbeng.png';
          break;
        case 2:
          // Data Pengujian 9: Logo Vokasi
          fileName = 'images/logo_vokasi.jpg';
          break;
      }
    });
  }

  void _navigateTo(Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Action Button'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.laptop),
            tooltip: 'Logo Kemdikbud',
            onPressed: () {
              selectImage(0);
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_balance),
            tooltip: 'Logo POLBENG',
            onPressed: () {
              selectImage(1);
            },
          ),
          // Data Pengujian 9: Tombol icon jangkar (Icons.anchor)
          IconButton(
            icon: const Icon(Icons.anchor),
            tooltip: 'Logo Vokasi',
            onPressed: () {
              selectImage(2);
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'JOB VII : WIDGET',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Daftar Praktikum & Evaluasi',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text(
                'PRAKTIKUM WIDGET DASAR',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.text_fields),
              title: const Text('A. Text Widget'),
              onTap: () => _navigateTo(const ex01.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.touch_app),
              title: const Text('B. ElevatedButton & Dialog'),
              onTap: () => _navigateTo(const ex02.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.exposure),
              title: const Text('C. StatefulWidget (Counter)'),
              onTap: () => _navigateTo(const ex03.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.view_column),
              title: const Text('D.1 Row Widget'),
              onTap: () => _navigateTo(const ex04.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.table_rows),
              title: const Text('D.2 Column Widget'),
              onTap: () => _navigateTo(const ex05.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.grid_view),
              title: const Text('D.3 Row & Column Widget'),
              onTap: () => _navigateTo(const ex06.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard_customize),
              title: const Text('D.4 Column & Row Widget'),
              onTap: () => _navigateTo(const ex07.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('E. Profil POLBENG (UI Row/Col)'),
              onTap: () => _navigateTo(const ex08.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.aspect_ratio),
              title: const Text('F.1 EdgeInsets.all'),
              onTap: () => _navigateTo(const ex09.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.crop_free),
              title: const Text('F.2 EdgeInsets.only'),
              onTap: () => _navigateTo(const ex10.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.wrap_text),
              title: const Text('G.1 Text.softWrap'),
              onTap: () => _navigateTo(const ex11.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.format_align_left),
              title: const Text('G.2 Text.textAlign'),
              onTap: () => _navigateTo(const ex12.MyApp()),
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('G.3 ListView Image'),
              onTap: () => _navigateTo(const ex13.MyApp()),
            ),
            const Divider(),
            const ListTile(
              title: Text(
                'TUGAS EVALUASI',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.table_chart, color: Colors.blue),
              title: const Text('Evaluasi 1: Tabel Data Mahasiswa'),
              onTap: () => _navigateTo(const Evaluasi1App()),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month, color: Colors.blue),
              title: const Text('Evaluasi 2: Deskripsi Hari'),
              onTap: () => _navigateTo(const Evaluasi2App()),
            ),
            ListTile(
              leading: const Icon(Icons.badge, color: Colors.blue),
              title: const Text('Evaluasi 3: Profil & Biodata Diri'),
              onTap: () => _navigateTo(const Evaluasi3App()),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 24),
          Center(
            child: SizedBox(
              height: 220.0,
              width: 220.0,
              child: Image.asset(
                fileName,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Gunakan tombol di pojok kanan atas untuk mengganti gambar:\n'
              '• Laptop: Kemdikbud\n'
              '• Gedung: Polbeng\n'
              '• Jangkar: Vokasi (Data Pengujian 9)\n\n'
              'Buka menu di kiri atas (Drawer) untuk membuka seluruh latihan praktikum dan evaluasi.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
