import 'package:flutter/material.dart';
import 'package:tempo_template/screens/loading_screen.dart';

void main() {
  runApp(const MyApp());
}
//main
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const LoadingScreen(),
    );
  }
}
