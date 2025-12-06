import 'package:cinemapoli/config/theme/appthere.dart';
import 'package:cinemapoli/presentation/screens/screens.dart';
import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<main>() async {
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: Appthere().getTheme(),
      home: HomeScreen(),
    );
  }
}
