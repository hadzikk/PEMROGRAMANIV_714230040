import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertemuan 5'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Image.network(
          'https://images.pexels.com/photos/2877854/pexels-photo-2877854.jpeg',
          width: 400,
          height: 400,
        ),
      ),
    );
  }
}