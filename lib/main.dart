import 'package:designs/src/challenges/cuadrado_animado_page.dart';
import 'package:designs/src/labs/circular_progress_page.dart';
import 'package:designs/src/pages/animate_do_pages.dart';
import 'package:designs/src/pages/graficas_circulares_page.dart';
import 'package:designs/src/labs/slideshow_page.dart';
import 'package:designs/src/pages/emergency_page.dart';
import 'package:designs/src/pages/launcher_page.dart';
import 'package:designs/src/pages/navegacion_page.dart';
import 'package:designs/src/pages/sliver_list_page.dart';
import 'package:designs/src/pages/pinterest_page.dart';
import 'package:designs/src/pages/slideshow_page.dart';
import 'package:designs/src/pages/animaciones_page.dart';
import 'package:designs/src/pages/headers_page.dart';
import 'package:designs/src/pages/twitter_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Intermediate Designs',
      // home: HeadersPage()
      // home: AnimacionesPage()
      // home: GraficasCircularesPage()
      // home: PinterestPage()
      // home: SlidesShowPage()
      // home: EmergencyPage(),
      // home: SliverListPage(),
      // home: AnimateDoPage(),
      home: LauncherPage(),
    );
  }
}
