import 'package:designs/src/Shoe%20App/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ZapatoPage extends StatelessWidget {
  const ZapatoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: CustomAppBar(texto: 'For you'),
      body: Column(
        children: [
          CustomAppBar(texto: 'For you'),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ZapatoSizePreview(),
                  ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
