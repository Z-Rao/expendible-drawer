import 'package:abc/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.teal,
      ),
      home: const SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}
