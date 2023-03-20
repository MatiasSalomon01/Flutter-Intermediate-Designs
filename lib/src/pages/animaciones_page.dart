import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimacionesPage extends StatelessWidget {
  const AnimacionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  const CuadradoAnimado({
    super.key,
  });

  @override
  State<CuadradoAnimado> createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> rotacion;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 4000));

    rotacion = Tween(begin: 0.0, end: 2 * math.pi)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

    controller.addListener(() {
      print('Status: ${controller.status}');
      if (controller.status == AnimationStatus.completed) {
        controller.reset();
      } /*else if (controller.status == AnimationStatus.dismissed) {
        controller.forward();
      }*/
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        // print(rotacion.value);
        return Transform.rotate(angle: rotacion.value, child: _Rectangulo());
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
  const _Rectangulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(color: Colors.blue),
    );
  }
}
