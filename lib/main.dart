import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_home_page/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
      builder: (context, widget)=> ResponsiveWrapper.builder(ClampingScrollWrapper.builder(context, widget!),
      breakpoints: const[
        ResponsiveBreakpoint.resize(600,name: MOBILE),
      ]
      ),
        
      
      title: 'Google Home',
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage());
    
  }
}

