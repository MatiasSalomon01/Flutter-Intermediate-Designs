import 'package:flutter/material.dart';

class PinterestButton {
  final Function onPressed;
  final IconData icon;

  PinterestButton({required this.onPressed, required this.icon});
}

class PinterestMenu extends StatelessWidget {
  final List<PinterestButton> items = [
    PinterestButton(
        onPressed: () => print('Icon pie_chart'), icon: Icons.pie_chart),
    PinterestButton(
        onPressed: () => print('Icon pie_chart'), icon: Icons.search),
    PinterestButton(
        onPressed: () => print('Icon pie_chart'),
        icon: Icons.notifications_active),
    PinterestButton(
        onPressed: () => print('Icon pie_chart'),
        icon: Icons.supervised_user_circle)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hola Mundo desde el menu'),
    );
  }
}
