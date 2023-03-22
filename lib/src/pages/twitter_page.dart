import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterPage extends StatelessWidget {
  const TwitterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1da1f2),
      body: Center(
        child: ZoomOut(
          animate: false,
          from: 30,
          duration: Duration(milliseconds: 1000),
          child: FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: FaIcon(FontAwesomeIcons.play),
      ),
    );
  }
}
