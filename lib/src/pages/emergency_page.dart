import 'package:designs/src/widgets/boton_gordo.dart';
import 'package:designs/src/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      // body: PageHeader(),
      body: Center(
        child: BotonGordo(
          color1: Color(0xff6989f5),
          color2: Color(0xff906ef5),
          icon: FontAwesomeIcons.carBurst,
          texto: 'Murder Accidents',
          onPress: () {
            print('Boton Presionado');
          },
        ),
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconHeader(
      icon: FontAwesomeIcons.plus,
      titulo: 'Asistencia Médica',
      subtitulo: 'Haz Solicitado',
      color1: Color(0xff526bf6),
      color2: Color(0xff67acf2),
    );
  }
}
