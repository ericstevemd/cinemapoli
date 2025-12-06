import 'package:cinemapoli/config/domain/entities/novie.dart';
import 'package:cinemapoli/presentation/providers/movies/movies_repositoy_provider.dart';

import 'package:flutter_riverpod/legacy.dart';

final nowPlayingMoviesProvider =
    StateNotifierProvider<MoviesNotifier, List<Movie>>((ref) {
      final fetcMoreMovies = ref.watch(movieRepositoryProvider).getNowplaying;
      return MoviesNotifier(fetchMoreMovies: fetcMoreMovies);
    });

typedef moviecallback = Future<List<Movie>> Function({int page});

class MoviesNotifier extends StateNotifier<List<Movie>> {
  int currentPage = 0;
  moviecallback fetchMoreMovies;

  MoviesNotifier({required this.fetchMoreMovies}) : super([]);

  Future<void> loadNextPage() async {
    currentPage++;

    final List<Movie> movies = await fetchMoreMovies(page: currentPage);

    state = [...state, ...movies];
  }
}
