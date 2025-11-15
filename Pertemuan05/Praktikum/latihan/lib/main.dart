import 'package:flutter/material.dart';
import 'package:latihan/components/cutom_font.dart';
import 'package:latihan/components/dynamic_scrolling_screen.dart';
import 'package:latihan/components/first_screen.dart';
import 'package:latihan/components/image.dart';
import 'package:latihan/components/image_assets.dart';
import 'package:latihan/components/scrolling_screen.dart';
import 'package:latihan/components/scrolling_screen_list_builder.dart';
import 'package:latihan/components/scrolling_screen_list_view_separated.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false
      ),
      debugShowCheckedModeBanner: false,
      home: ScrollingScreenListBuilder(),
    );
  }
}