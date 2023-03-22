import 'package:designs/src/challenges/cuadrado_animado_page.dart';
import 'package:designs/src/pages/emergency_page.dart';
import 'package:designs/src/pages/graficas_circulares_page.dart';
import 'package:designs/src/pages/headers_page.dart';
import 'package:designs/src/pages/pinterest_page.dart';
import 'package:designs/src/pages/slideshow_page.dart';
import 'package:designs/src/pages/sliver_list_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final pageRoutes = [
  _Route(
    FontAwesomeIcons.slideshare,
    'SlideShow',
    SlidesShowPage(),
  ),
  _Route(
    FontAwesomeIcons.truckMedical,
    'Emergencia',
    EmergencyPage(),
  ),
  _Route(
    FontAwesomeIcons.heading,
    'Encabezados',
    HeadersPage(),
  ),
  _Route(
    FontAwesomeIcons.peopleCarryBox,
    'Cuadro Animado',
    CuadradoAnimadoPage(),
  ),
  _Route(
    FontAwesomeIcons.circleNotch,
    'Barra de Progreso',
    GraficasCircularesPage(),
  ),
  _Route(
    FontAwesomeIcons.pinterest,
    'Pinterest',
    PinterestPage(),
  ),
  _Route(
    FontAwesomeIcons.mobile,
    'Slivers',
    SliverListPage(),
  ),
];

class _Route {
  final IconData icon;
  final String titulo;
  final Widget page;
  _Route(this.icon, this.titulo, this.page);
}
