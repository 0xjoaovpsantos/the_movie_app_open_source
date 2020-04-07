import 'package:the_movie_app_open_source/app/utils/key.dart';

class Constants {
  static String baseUrlUpComingMovies =
      "https://api.themoviedb.org/3/movie/upcoming?api_key=";
  static String baseUrlPopularMovies =
      "https://api.themoviedb.org/3/movie/popular?api_key=";
  static String baseUrlDescriptionMovie = "https://api.themoviedb.org/3/movie/";
  static String baseUrlPosterMovie = "http://image.tmdb.org/t/p/w500/";
  static String baseUrlBackdropImg = "http://image.tmdb.org/t/p/w500/";
  static String keyTheMovieAdb = Key.keyString;
}
