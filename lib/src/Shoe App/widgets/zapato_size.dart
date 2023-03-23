import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  final bool fullScreen;
  ZapatoSizePreview({this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: fullScreen ? 0 : 30, vertical: fullScreen ? 0 : 5),
      child: Container(
        width: double.infinity,
        height: fullScreen ? 420 : 430,
        decoration: BoxDecoration(
          color: Color(0xffffcf53),
          borderRadius: !fullScreen
              ? BorderRadius.circular(50)
              : BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
        ),
        child: Column(
          children: [
            // Zapato con su dsombra
            _ZapatoConSombra(),
            if (!fullScreen) _ZapatoTallas(),
          ],
        ),
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TallaZapatoCaja(7),
          _TallaZapatoCaja(7.5),
          _TallaZapatoCaja(8),
          _TallaZapatoCaja(8.5),
          _TallaZapatoCaja(9),
          _TallaZapatoCaja(9.5),
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatefulWidget {
  final double numero;
  _TallaZapatoCaja(this.numero);

  @override
  State<_TallaZapatoCaja> createState() => _TallaZapatoCajaState();
}

class _TallaZapatoCajaState extends State<_TallaZapatoCaja> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    Color inactiveColor = Colors.white;
    Color activeColor = Color(0xfff1a23a);

    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          '${widget.numero.toString().replaceAll('.0', '')}',
          style: TextStyle(
              color: isActive == true ? inactiveColor : Color(0xffF1a23a),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: isActive ? activeColor : inactiveColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            isActive
                ? BoxShadow(
                    color: Color(0xfff1a23a),
                    blurRadius: 10,
                    offset: Offset(0, 10))
                : BoxShadow()
          ],
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 0,
            child: _ZapatoSombra(),
          ),
          Image(image: AssetImage('assets/images_shoe_app/azul.png')),
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  const _ZapatoSombra({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Color(0xffeaa14e), blurRadius: 40),
          ],
        ),
      ),
    );
  }
}
