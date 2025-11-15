import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/detail.screen.dart';
import 'package:flutter_application_2/components/main.screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tempat Wisata Bandung',
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'Work Sans',
      ),
      home: MainScreen(),
    );
  }
}