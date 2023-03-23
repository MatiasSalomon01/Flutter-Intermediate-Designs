import 'package:designs/src/PageTransition/pages/pagina2.dart';
import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: Center(
        child: Text('Pagina1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, _crearRuta());
        },
        child: Icon(Icons.access_time),
      ),
    );
  }

  Route _crearRuta() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Pagina2(),
      // transitionDuration: Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        // return SlideTransition(
        //   position: Tween(begin: Offset(0.5, 1.0), end: Offset.zero)
        //       .animate(curvedAnimation),
        //   child: child,
        // );

        // return ScaleTransition(
        //   child: child,
        //   scale: Tween(begin: 0.0, end: 1.0).animate(curvedAnimation),
        // );

        return RotationTransition(
            child: child,
            turns: Tween(begin: 0.0, end: 1.0).animate(curvedAnimation));
      },
    );
  }
}
