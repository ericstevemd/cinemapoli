import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviromment {
  static String theMovieDbKey =
      dotenv.env['THE_MOVIEDB_KEY'] ?? 'no se muestra nada ';
}
