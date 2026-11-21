import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget App',
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
        title: const Text('Demo Column Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Button 1'),
              onPressed: () {},
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Button 2'),
              onPressed: () {},
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Button 3'),
              onPressed: () {},
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Button 4'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
