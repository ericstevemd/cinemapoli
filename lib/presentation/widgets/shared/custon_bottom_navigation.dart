import 'package:flutter/material.dart';

class CustonBottomNavigation extends StatelessWidget {
  const CustonBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_max), label: ' Inicio'),
        BottomNavigationBarItem(
          icon: Icon(Icons.label_outline),
          label: 'Categoria ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: ' favoritos',
        ),
      ],
    );
  }
}
