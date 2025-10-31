import 'package:flutter/material.dart';
import 'package:p4_2_714230040/components/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Tugas Pertemuan 4',
      home: Home(),
    );
  }
}