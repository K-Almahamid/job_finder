import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Finder App ',
      theme: ThemeData(
        primaryColor: const Color(0xFF43B1B7),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFFFED408),
        ),
      ),
      home: HomePage(),
    );
  }
}
