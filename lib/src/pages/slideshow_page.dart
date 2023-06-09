import 'package:designs/src/widgets/slideshow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SlidesShowPage extends StatelessWidget {
  const SlidesShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 181, 181),
        body: Column(
          children: [
            Expanded(child: MiSlideShow()),
            Expanded(child: MiSlideShow()),
          ],
        ));
  }
}

class MiSlideShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideShow(
        puntosArriba: false,
        bulletPrimario: 18,
        bulletSecundario: 12,
        colorPrimario: Colors.red,
        colorSecundario: Color.fromARGB(255, 255, 255, 255),
        slides: [
          SvgPicture.asset('assets/svgs/slide-1.svg'),
          SvgPicture.asset('assets/svgs/slide-2.svg'),
          SvgPicture.asset('assets/svgs/slide-3.svg'),
          SvgPicture.asset('assets/svgs/slide-4.svg'),
          SvgPicture.asset('assets/svgs/slide-5.svg')
        ]);
  }
}
