import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NavegacionPage extends StatelessWidget {
  const NavegacionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _NotificationModel(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Notifications Page'),
        ),
        floatingActionButton: BotonFlotante(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}

class BotonFlotante extends StatelessWidget {
  const BotonFlotante({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final notiModel =
            Provider.of<_NotificationModel>(context, listen: false);
        int numero = notiModel.numero;

        numero++;

        notiModel.numero = numero;

        if (numero >= 2) {
          final controller = notiModel.bounceController;

          controller.forward(from: 0);
        }
      },
      child: FaIcon(FontAwesomeIcons.play),
      backgroundColor: Colors.pink,
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final numero = Provider.of<_NotificationModel>(context).numero;
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.pink,
      items: [
        BottomNavigationBarItem(
          label: 'Bones',
          icon: FaIcon(FontAwesomeIcons.bone),
        ),
        BottomNavigationBarItem(
          label: 'Notifications',
          // icon: FaIcon(FontAwesomeIcons.bell),
          icon: Stack(
            children: [
              FaIcon(FontAwesomeIcons.bell),
              Positioned(
                right: 0,
                top: 0,
                child: BounceInDown(
                  from: 10,
                  animate: numero > 0 ? true : false,
                  child: Bounce(
                    from: 10,
                    controller: (controller) =>
                        Provider.of<_NotificationModel>(context)
                            .bounceController = controller,
                    child: Container(
                      alignment: Alignment.center,
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      child: Text(
                        '$numero',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        BottomNavigationBarItem(
          label: 'My dog',
          icon: FaIcon(FontAwesomeIcons.dog),
        )
      ],
    );
  }
}

class _NotificationModel extends ChangeNotifier {
  int _numero = 0;
  late AnimationController _bounceController;

  int get numero => _numero;
  set numero(int value) {
    _numero = value;
    notifyListeners();
  }

  AnimationController get bounceController => _bounceController;
  set bounceController(AnimationController value) {
    _bounceController = value;
    notifyListeners();
  }
}
