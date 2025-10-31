import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottom.navbar.dart';
import 'package:flutter_application_1/components/drawer.dart';
import 'package:flutter_application_1/components/heading.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Home page')),
    drawer: AppDrawer(),
    body: Center(
      child: BiggerText(teks: 'Hello ULBI'),
    ), 
    bottomNavigationBar: BottomNavbar(),);
  }
}