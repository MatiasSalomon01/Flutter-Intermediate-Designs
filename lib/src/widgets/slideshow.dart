import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SlideShow extends StatelessWidget {
  final List<Widget> slides;
  final bool puntosArriba;
  final Color colorPrimario;
  final Color colorSecundario;
  final double bulletPrimario;
  final double bulletSecundario;

  SlideShow(
      {required this.slides,
      this.puntosArriba = false,
      this.colorPrimario = Colors.blue,
      this.colorSecundario = Colors.grey,
      this.bulletPrimario = 12,
      this.bulletSecundario = 12});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _SlideShowModel(),
      child: SafeArea(
        child: Builder(
          builder: (context) {
            Provider.of<_SlideShowModel>(context).colorPrimario = colorPrimario;
            Provider.of<_SlideShowModel>(context).colorSecundario =
                colorSecundario;
            Provider.of<_SlideShowModel>(context).bulletPrimario =
                bulletPrimario;
            Provider.of<_SlideShowModel>(context).bulletSecundario =
                bulletSecundario;
            return _CrearEstructuraSlideShow(
                puntosArriba: puntosArriba, slides: slides);
          },
        ),
      ),
    );
  }
}

class _CrearEstructuraSlideShow extends StatelessWidget {
  const _CrearEstructuraSlideShow({
    super.key,
    required this.puntosArriba,
    required this.slides,
  });

  final bool puntosArriba;
  final List<Widget> slides;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          if (puntosArriba) _Dots(slides.length),
          Expanded(child: _Slides(slides)),
          if (!puntosArriba) _Dots(slides.length),
        ],
      ),
    );
  }
}

class _Dots extends StatelessWidget {
  final int totalDots;

  const _Dots(this.totalDots);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(totalDots, (index) => _Dot(index)),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final int index;

  _Dot(this.index);

  @override
  Widget build(BuildContext context) {
    final slideShowModel = Provider.of<_SlideShowModel>(context);
    double size = 0;
    Color color;

    if (slideShowModel.currentPage >= index - 0.5 &&
        slideShowModel.currentPage < index + 0.5) {
      size = slideShowModel.bulletPrimario;
      color = slideShowModel.colorPrimario;
    } else {
      size = slideShowModel.bulletSecundario;
      color = slideShowModel.colorSecundario;
    }

    // final size = slideShowModel.currentPage == index
    //     ? slideShowModel.bulletPrimario
    //     : slideShowModel.bulletSecundario;

    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      child: Container(
        width: size,
        height: size,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}

//SvgPicture.asset('assets/svgs/slide-1.svg'),

class _Slides extends StatefulWidget {
  final List<Widget> slides;

  _Slides(this.slides);

  @override
  State<_Slides> createState() => _SlidesState();
}

class _SlidesState extends State<_Slides> {
  final pageViewController = PageController();

  @override
  void initState() {
    pageViewController.addListener(() {
      Provider.of<_SlideShowModel>(context, listen: false).currentPage =
          pageViewController.page!;
    });
    super.initState();
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        controller: pageViewController,
        children: widget.slides.map((slide) => _Slide(slide)).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final Widget slide;
  _Slide(this.slide);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      child: slide,
    );
  }
}

class _SlideShowModel extends ChangeNotifier {
  double _currentPage = 0;
  Color _colorPrimario = Colors.blue;
  Color _colorSecundario = Colors.grey;
  double _bulletPrimario = 12;
  double _bulletSecundario = 12;

  double get currentPage => _currentPage;

  set currentPage(double pagina) {
    _currentPage = pagina;
    notifyListeners();
  }

  Color get colorPrimario => _colorPrimario;

  set colorPrimario(Color color) {
    _colorPrimario = color;
    notifyListeners();
  }

  Color get colorSecundario => _colorSecundario;

  set colorSecundario(Color color) {
    _colorSecundario = color;
    notifyListeners();
  }

  double get bulletPrimario => _bulletPrimario;

  set bulletPrimario(double value) {
    _bulletPrimario = value;
    notifyListeners();
  }

  double get bulletSecundario => _bulletSecundario;

  set bulletSecundario(double value) {
    _bulletSecundario = value;
    notifyListeners();
  }
}
