import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Intermediate Designs',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Intermediate Designs'),
        ),
        body: const Center(
          child: Text('Flutter Intermediate Designs'),
        ),
      ),
    );
  }
}
