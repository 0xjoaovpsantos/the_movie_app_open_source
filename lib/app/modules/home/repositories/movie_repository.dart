import 'package:dio/dio.dart';
import 'package:the_movie_app_open_source/app/models/movie.dart';
import 'package:the_movie_app_open_source/app/utils/constants.dart';

class MovieRepository {
  final Dio _client;

  MovieRepository(this._client);

  Future<List<Movie>> getMoviesUpComing() async {
    Response response = await _client
        .get(Constants.baseUrlUpComingMovies + Constants.keyTheMovieAdb);

    return (response.data["results"] as List)
        .map((item) => Movie.fromJson(item))
        .toList();
  }

  Future<List<Movie>> getMoviesPopular() async {
    Response response = await _client
        .get(Constants.baseUrlPopularMovies + Constants.keyTheMovieAdb);

    return (response.data["results"] as List)
        .map((item) => Movie.fromJson(item))
        .toList();
  }
}
