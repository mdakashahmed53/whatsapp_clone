import 'package:flutter/material.dart';
import 'package:whatsapp/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarThemeData(
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.blue
        ),
        scaffoldBackgroundColor: Colors.blue.shade100
      ),
      title: 'WhatsApp Clone',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}