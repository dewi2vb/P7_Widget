import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Action Button App',
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
          // Data Pengujian 9: Menampilkan logo_vokasi.jpg
          fileName = 'images/logo_vokasi.jpg';
          break;
      }
    });
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
        ],
      ),
    );
  }
}
