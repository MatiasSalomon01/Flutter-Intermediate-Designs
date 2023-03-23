import 'package:flutter/material.dart';

class BotonNaranja extends StatelessWidget {
  final String texto;
  const BotonNaranja({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        texto,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
