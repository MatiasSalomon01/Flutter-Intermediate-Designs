import 'package:designs/src/MusicPlayer/helpers/helpers.dart';
import 'package:designs/src/MusicPlayer/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          Column(
            children: [
              CustomAppBar(),
              ImagenDiscoDuracion(),
              TituloPlay(),
              Expanded(child: Lyrics())
            ],
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: screenSize.height * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.center,
          colors: [
            Color(0xff333333e),
            Color(0xff201e28),
          ],
        ),
      ),
    );
  }
}

class Lyrics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lyrics = getLyrics();
    return Container(
      child: ListWheelScrollView(
        itemExtent: 42,
        diameterRatio: 1.5,
        physics: BouncingScrollPhysics(),
        children: lyrics
            .map(
              (verso) => Text(
                verso,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class TituloPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Far away',
                style: TextStyle(
                    fontSize: 30, color: Colors.white.withOpacity(0.8)),
              ),
              Text(
                '- Breaking Benjamin',
                style: TextStyle(
                    fontSize: 15, color: Colors.white.withOpacity(0.5)),
              )
            ],
          ),
          Spacer(),
          FloatingActionButton(
            elevation: 0,
            highlightElevation: 0,
            backgroundColor: Color(0xfff8cb51),
            child: Icon(Icons.play_arrow),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class ImagenDiscoDuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(top: 80),
      child: Row(
        children: [
          ImagesDisco(),
          SizedBox(width: 40),
          BarraProgreso(),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}

class BarraProgreso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle(color: Colors.white.withOpacity(0.4));
    return Container(
      child: Column(
        children: [
          Text('00:00', style: estilo),
          SizedBox(height: 10),
          Stack(
            children: [
              Container(
                width: 3,
                height: 230,
                color: Colors.white.withOpacity(0.1),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 3,
                  height: 100,
                  color: Colors.white.withOpacity(0.8),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Text('00:00', style: estilo),
        ],
      ),
    );
  }
}

class ImagesDisco extends StatelessWidget {
  const ImagesDisco({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Color(0xff484750),
            Color(0xff1e1c24),
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image(image: AssetImage('assets/images_music_player/aurora.jpg')),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: Color(0xff1c1c25),
                borderRadius: BorderRadius.circular(100),
              ),
            )
          ],
        ),
      ),
    );
  }
}
