import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextAlign App',
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

class Home extends StatelessWidget {
  final String teks1 =
      'Nilai TextAlign.start pada teks dengan TextDirection.ltr';
  final String teks2 =
      'Nilai TextAlign.end pada teks dengan TextDirection.ltr';
  final String teks3 =
      'Nilai TextAlign.start pada teks dengan TextDirection.rtl';
  final String teks4 =
      'Nilai TextAlign.end pada teks dengan TextDirection.rtl';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode Text.textAlign'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: Text(
                teks1,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: Text(
                teks2,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: Text(
                teks3,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              width: double.infinity,
              child: Text(
                teks4,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
