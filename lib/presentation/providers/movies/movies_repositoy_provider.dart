import 'package:cinemapoli/infrastructure/datasources/moviedb_datasouce.dart';
import 'package:cinemapoli/infrastructure/repositories/movie_repository_imple.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImple(datasource: MoviedbDatasouce());
});
