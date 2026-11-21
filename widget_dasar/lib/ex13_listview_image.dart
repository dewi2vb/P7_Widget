import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listview Image App',
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
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Listview Image'),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 16),
          Center(
            child: SizedBox(
              height: 200.0,
              width: 200.0,
              child: Image.asset(
                'images/logo_kemdikbud.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          Center(
            child: SizedBox(
              height: 200.0,
              width: 200.0,
              child: Image.asset(
                'images/logo_polbeng.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
