// import 'package:designs/src/challenges/cuadrado_animado_page.dart';
import 'package:designs/src/labs/circular_progress_page.dart';
// import 'package:designs/src/pages/graficas_circulares_page.dart';
import 'package:designs/src/pages/slideshow_page.dart';
// import 'package:designs/src/pages/animaciones_page.dart';
// import 'package:designs/src/pages/headers_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Intermediate Designs',
        // home: HeadersPage());
        home: SlideShowPage());
  }
}
