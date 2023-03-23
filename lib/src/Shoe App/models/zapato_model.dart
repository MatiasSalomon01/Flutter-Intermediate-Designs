import 'package:flutter/material.dart';

class ZapatoModel extends ChangeNotifier {
  String _assetImage = 'assets/images_shoe_app/azul.png';

  double _talla = 9;

  String get assetImage => _assetImage;

  double get talla => _talla;

  set assetImage(String value) {
    _assetImage = value;
    notifyListeners();
  }

  set talla(double value) {
    _talla = value;
    notifyListeners();
  }
}
