import 'package:designs/src/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IconHeader(
        icon: FontAwesomeIcons.plus,
        titulo: 'Asistencia Médica',
        subtitulo: 'Haz Solicitado',
        color1: Color(0xff526bf6),
        color2: Color(0xff67acf2),
      ),
    );
  }
}
