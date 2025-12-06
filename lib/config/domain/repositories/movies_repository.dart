import 'package:cinemapoli/config/domain/entities/novie.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getNowplaying({int page = 1});
}
