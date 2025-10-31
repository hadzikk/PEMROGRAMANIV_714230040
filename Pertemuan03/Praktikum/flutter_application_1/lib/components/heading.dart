import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String teks;

  const Heading({super.key, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Text(
      teks,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String teks;

  const BiggerText({super.key, required this.teks});

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.teks,
          style: TextStyle(fontSize: _textSize),
        ),
        ElevatedButton(
          child: Text(_textSize == 16.0 ? 'Perbesar' : 'Perkecil'),
          onPressed: () {
            setState(() {
              _textSize = _textSize == 16.00 ? 32.00 : 16.0; 
            });
          },
        )
      ],
    );
  }
}