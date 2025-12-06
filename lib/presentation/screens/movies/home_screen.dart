import 'package:cinemapoli/config/constants/enviromment.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cinepolice')),
      body: Center(child: Text(Enviromment.theMovieDbKey)),
    );
  }
}
