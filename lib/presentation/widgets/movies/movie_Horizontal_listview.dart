import 'package:cinemapoli/config/domain/entities/novie.dart';
import 'package:flutter/material.dart';

class MovieHorizontalListview extends StatelessWidget {
  final List<Movie> novies;
  final String? title;
  final String subtitle;
  final VoidCallback? loadNextPage;
  const MovieHorizontalListview({
    super.key,
    required this.novies,
    this.title,
    required this.subtitle,
    this.loadNextPage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [Text('hola ')]);
  }
}
