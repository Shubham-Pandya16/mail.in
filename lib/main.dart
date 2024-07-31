import 'package:flutter/material.dart';
import 'package:gmail_clone_v2/pages/composePage.dart';
import 'package:gmail_clone_v2/pages/entrypage.dart';
import 'package:gmail_clone_v2/pages/homePage.dart';
import 'package:gmail_clone_v2/pages/login.dart';
import 'package:gmail_clone_v2/pages/signup.dart';
import 'package:gmail_clone_v2/pages/email_pages.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: entry_Page(),
      
    );
  }
}
