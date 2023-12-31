import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// pages
import 'package:agri_plant/pages/welcome_page.dart';
import 'package:agri_plant/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
          textTheme: GoogleFonts.mulishTextTheme()),
      home: const WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
