import 'package:designs/src/MusicPlayer/models/audio_player_model.dart';
import 'package:designs/src/MusicPlayer/pages/music_player_page.dart';
import 'package:designs/src/MusicPlayer/theme/theme.dart';
import 'package:designs/src/PageTransition/pages/pagina1.dart';
import 'package:designs/src/Shoe%20App/models/zapato_model.dart';
import 'package:designs/src/Shoe%20App/pages/zapato_desc_page.dart';
import 'package:designs/src/Shoe%20App/pages/zapato_page.dart';
import 'package:designs/src/pages/launcher_page.dart';
import 'package:designs/src/theme/theme_changer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeChanger(),
          child: MyApp(),
        ),
        ChangeNotifierProvider(
          create: (context) => ZapatoModel(),
          child: MyApp(),
        ),
        ChangeNotifierProvider(
          create: (context) => AudioPlayerModel(),
          child: MyApp(),
        ),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Intermediate Designs',
      // home: LauncherPage(),
      // home: ZapatoPage(),
      // home: MusicPlayerPage(),
      home: Pagina1(),
      // theme: miTema,
    );
  }
}
