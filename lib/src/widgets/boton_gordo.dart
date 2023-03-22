import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;
  final Function onPress;
  const BotonGordo(
      {super.key,
      required this.icon,
      required this.texto,
      required this.color1,
      required this.color2,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Stack(
        children: [
          _BotonGordoBackground(color1: color1, color2: color2),
          _BotonGordoContent(
            texto: texto,
            icon: icon,
          )
        ],
      ),
    );
  }
}

class _BotonGordoContent extends StatelessWidget {
  const _BotonGordoContent({
    super.key,
    required this.texto,
    required this.icon,
  });

  final String texto;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 140,
          width: 40,
        ),
        FaIcon(
          icon,
          color: Colors.white,
          size: 40,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            texto,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        const FaIcon(
          FontAwesomeIcons.chevronRight,
          color: Colors.white,
        ),
        const SizedBox(width: 40),
      ],
    );
  }
}

class _BotonGordoBackground extends StatelessWidget {
  const _BotonGordoBackground({
    super.key,
    required this.color1,
    required this.color2,
  });
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        // color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(4, 6),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              top: -20,
              right: -20,
              child: FaIcon(
                FontAwesomeIcons.carBurst,
                size: 150,
                color: Colors.white.withOpacity(0.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
