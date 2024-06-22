import 'package:flutter/material.dart';
//import 'package:tesisproject/views/registers.dart';
import 'package:tesisproject/views/graphic.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: GraficView());
  }
}
