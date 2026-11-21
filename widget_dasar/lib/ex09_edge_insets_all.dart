import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdgeInsets.all App',
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
        title: const Text('Metode EdgeInsets.all'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.tealAccent,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            child: ElevatedButton(
              child: const Text('Button 1'),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                width: 5.0,
                color: Colors.red,
              ),
            ),
            child: ElevatedButton(
              child: const Text('Button 2'),
              onPressed: () {},
            ),
          ),
          Container(
            color: Colors.tealAccent,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            child: ElevatedButton(
              child: const Text('Button 3'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
