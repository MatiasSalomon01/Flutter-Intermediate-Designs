import 'dart:math';

import 'package:flutter/material.dart';

class CircularProgressPage extends StatefulWidget {
  const CircularProgressPage({super.key});

  @override
  State<CircularProgressPage> createState() => _CircularProgressPageState();
}

class _CircularProgressPageState extends State<CircularProgressPage> {
  double porcentaje = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          porcentaje += 10;
          if (porcentaje > 100) porcentaje = 0;
          setState(() {});
        },
        child: Icon(Icons.refresh),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          width: 300,
          height: 300,
          // color: Colors.red,
          child: CustomPaint(
            painter: _MiRadialProgress(porcentaje),
          ),
        ),
      ),
    );
  }
}

class _MiRadialProgress extends CustomPainter {
  final porcentaje;

  _MiRadialProgress(this.porcentaje);
  @override
  void paint(Canvas canvas, Size size) {
    //Circulo Completado
    final paint = Paint()
      ..strokeWidth = 4
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width * 0.5, size.height * 0.5);
    final radio = min(size.width * 0.5, size.height * 0.5);
    canvas.drawCircle(center, radio, paint);

    //Arco
    final paintArco = Paint()
      ..strokeWidth = 10
      ..color = Colors.pink
      ..style = PaintingStyle.stroke;

    //Parte a rellenar
    double arcAngle = 2 * pi * (porcentaje / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radio), -pi / 2,
        arcAngle, false, paintArco);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
