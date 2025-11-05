import 'package:flutter/material.dart';

class SeccondScreenWithMessage extends StatelessWidget {
  final String message;
  
  const SeccondScreenWithMessage(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seccond Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            OutlinedButton(
              child: const Text('Kembali'),
              onPressed:() {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}