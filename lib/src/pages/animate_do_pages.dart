import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimateDoPage extends StatelessWidget {
  const AnimateDoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animate-do '),
        actions: [
          IconButton(
              onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.twitter)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.navigate_next))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const FaIcon(FontAwesomeIcons.play),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.new_releases,
              color: Colors.blue,
              size: 40,
            ),
            Text(
              'Titulo',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
            ),
            Text(
              'Soy un texto pequeño',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Container(
              width: 220,
              height: 2,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
