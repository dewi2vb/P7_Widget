import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdgeInsets.only App',
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
        title: const Text('Metode EdgeInsets.only'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.tealAccent,
              margin: const EdgeInsets.only(
                top: 50.0,
              ),
              padding: const EdgeInsets.only(
                left: 70.0,
                right: 10.0,
              ),
              child: ElevatedButton(
                child: const Text('Button'),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
