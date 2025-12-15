import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; 
import 'login_screen.dart'; 

class MyHome extends StatefulWidget { 
  const MyHome({super.key}); 
 
  @override 
  State<MyHome> createState() => _MyHomeState(); 
} 

class _MyHomeState extends State<MyHome> { 
  late SharedPreferences loginData;
  String username = '';

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  Future<void> _loadUsername() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString('username') ?? 'User';
    });
  }

  Future<void> _logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // This clears all data including 'isLoggedIn' and 'username'
    
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }
  }

  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ), 
      body: Center( 
        child: Container( 
          margin: const EdgeInsets.symmetric( 
            vertical: 12, 
            horizontal: 16, 
          ), 
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              const Text('Welcome to Home'), 
              const SizedBox(height: 20), 
              Text(username), 
              const SizedBox(height: 20),
              ElevatedButton( 
                onPressed: _logout, 
                child: const Text('Logout'), 
              ), 
            ], 
          ), 
        ), 
      ), 
    ); 
  } 
}