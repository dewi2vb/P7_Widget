import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget App',
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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Text Widget'),
        ),
        body: const Center(
          child: Text(
            'Rekayasa Perangkat Lunak',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
