import 'package:designs/src/MusicPlayer/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [CustomAppBar(), ImagesDIscoDuracion()],
      ),
    );
  }
}

class ImagesDIscoDuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          //Disco
          ImagesDisco()
          //Barra de Progreso
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
    );
  }
}
