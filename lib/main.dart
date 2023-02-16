import 'package:flutter/material.dart';
import 'package:google_home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Home',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const HomePage());
    
  }
}

