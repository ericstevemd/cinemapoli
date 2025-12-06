import 'package:cinemapoli/config/domain/datasoucer/movies_datasource.dart';
import 'package:cinemapoli/config/domain/entities/novie.dart';
import 'package:cinemapoli/config/domain/repositories/movies_repository.dart';

class MovieRepositoryImple extends MoviesRepository {
  final MoviesDatasource datasource;

  MovieRepositoryImple({required this.datasource});

  @override
  Future<List<Movie>> getNowplaying({int page = 1}) {
    return datasource.getNowplaying(page: page);
  }
}
