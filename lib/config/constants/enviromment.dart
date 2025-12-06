import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviromment {
  static String theMovieDbKey = dotenv.env['VAR_NAME'] ?? 'no se muestra nada ';
}
