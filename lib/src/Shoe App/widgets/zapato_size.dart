import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  const ZapatoSizePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Color(0xffffcf53),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            // Zapato con su dsombra
            _ZapatoConSombra(),
          ],
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(bottom: 20, right: 0, child: _ZapatoSombra()),
          Image(
            image: AssetImage('assets/images_shoe_app/azul.png'),
          )
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  const _ZapatoSombra({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Color(0xffeaa14e), blurRadius: 40),
          ],
        ),
      ),
    );
  }
}
