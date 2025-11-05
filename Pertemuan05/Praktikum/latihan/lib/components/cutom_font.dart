import 'package:flutter/material.dart';

class MyCustomFont extends StatelessWidget {
  const MyCustomFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertemuan 5'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Text(
          'Custom Font',
           style: TextStyle(
            fontFamily: 'Nippo',
            fontSize: 30
           )
           ),
      ),
    );
  }
}