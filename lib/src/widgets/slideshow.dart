import 'package:designs/src/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SlideShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SliderModel(),
      child: Center(
        child: Column(
          children: [Expanded(child: _Slides()), _Dots()],
        ),
      ),
    );
  }
}

class _Dots extends StatelessWidget {
  const _Dots({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_Dot(0), _Dot(1), _Dot(2)],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final int index;

  _Dot(this.index);

  @override
  Widget build(BuildContext context) {
    final pageViewIndex = Provider.of<SliderModel>(context).currentPage;

    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      child: Container(
        width: 12,
        height: 12,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: (pageViewIndex >= index - 0.5 && pageViewIndex < index + 0.5)
                ? Colors.blue
                : Colors.grey,
            shape: BoxShape.circle),
      ),
    );
  }
}

//SvgPicture.asset('assets/svgs/slide-1.svg'),

class _Slides extends StatefulWidget {
  @override
  State<_Slides> createState() => _SlidesState();
}

class _SlidesState extends State<_Slides> {
  final pageViewController = PageController();

  @override
  void initState() {
    pageViewController.addListener(() {
      //print('Pagina Actual: ${pageViewController.page}');
      Provider.of<SliderModel>(context, listen: false).currentPage =
          pageViewController.page!;
      //Actualizar SliderModel
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
        children: [
          _Slide('assets/svgs/slide-1.svg'),
          _Slide('assets/svgs/slide-2.svg'),
          _Slide('assets/svgs/slide-3.svg'),
          // _Slide('assets/svgs/slide-4.svg'),
          // _Slide('assets/svgs/slide-5.svg'),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String svg;
  _Slide(this.svg);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      child: SvgPicture.asset(svg),
    );
  }
}
