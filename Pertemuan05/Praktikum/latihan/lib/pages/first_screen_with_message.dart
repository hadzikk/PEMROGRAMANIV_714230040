import 'package:flutter/material.dart';
import 'package:latihan/pages/seccond_screen_with_message.dart';

class FirstScreenWithMessage extends StatelessWidget {
  const FirstScreenWithMessage({super.key});

  final String message = 'Hello from first screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => SeccondScreenWithMessage(message)));
        }
        ), 
      )
    );
  }
}