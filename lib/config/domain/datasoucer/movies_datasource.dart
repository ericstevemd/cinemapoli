import 'package:cinemapoli/config/domain/entities/novie.dart';

abstract class MoviesDatasource {
  Future<List<Movie>> getNowplaying({int page = 1});
}
