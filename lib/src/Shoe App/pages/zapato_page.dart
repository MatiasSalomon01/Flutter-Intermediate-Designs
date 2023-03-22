import 'package:designs/src/Shoe%20App/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ZapatoPage extends StatelessWidget {
  const ZapatoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(
        texto: 'For you',
      ),
    );
  }
}
