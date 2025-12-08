import 'package:cinemapoli/config/constants/enviromment.dart';
import 'package:cinemapoli/config/domain/datasoucer/movies_datasource.dart';
import 'package:cinemapoli/config/domain/entities/novie.dart';
import 'package:cinemapoli/infrastructure/datasources/movie_mapper.dart';
import 'package:cinemapoli/infrastructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MoviedbDatasouce extends MoviesDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Enviromment.theMovieDbKey,
        'language': 'es_MX',
      },
    ),
  );

  @override
  Future<List<Movie>> getNowplaying({int page = 1}) async {
    final Response = await dio.get('/movie/now_playing');
    print("🔍 JSON dates viene así: ${Response.data["dates"]}");
    print("🔍 JSON completo: ${Response.data}");
    final movieDbResponse = MovieDbResponse.fromJson(Response.data);

    final List<Movie> movies = movieDbResponse.results
        .where((moviedb) => moviedb.posterPath != 'no-poster')
        .map((moviedb) => MovieMapper.movieDBToEntity(moviedb))
        .toList();

    return movies;
  }
}
