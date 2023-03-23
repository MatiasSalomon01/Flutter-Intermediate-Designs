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
      home: ZapatoPage(),
    );
  }
}
