//import 'package:cinemapoli/config/constants/enviromment.dart';
import 'package:cinemapoli/presentation/providers/movies/movies_providers.dart';
//import 'package:cinemapoli/presentation/widgets/shared/custom_appbar.dart';
import 'package:cinemapoli/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cinepolice')),

      //body: Center(child: Text('hola mundo ')),
      body: _HomeView(),
      bottomNavigationBar: CustonBottomNavigation(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

    return Column(
      children: [
        CustomAppbar(),

        MoviesSildeshow(movies: nowPlayingMovies),

        MovieHorizontalListview(novies: [], subtitle: ''),
      ],
    );
  }
}
