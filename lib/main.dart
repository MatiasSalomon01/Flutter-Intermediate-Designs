import 'package:designs/src/Shoe%20App/pages/zapato_desc_page.dart';
import 'package:designs/src/Shoe%20App/pages/zapato_page.dart';
import 'package:designs/src/pages/launcher_page.dart';
import 'package:designs/src/theme/theme_changer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => ThemeChanger(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Intermediate Designs',
      // theme: ThemeData.dark(),
      // home: LauncherPage(),
      home: ZapatoPage(),
      // home: ZapatoDescripcionPage(),
    );
  }
}
