import 'package:designs/src/Shoe%20App/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ZapatoDescripcionPage extends StatelessWidget {
  const ZapatoDescripcionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ZapatoSizePreview(fullScreen: true),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                ZapatoDescripcion(
                  titulo: 'Nike Air Max 720',
                  descripcion:
                      "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
