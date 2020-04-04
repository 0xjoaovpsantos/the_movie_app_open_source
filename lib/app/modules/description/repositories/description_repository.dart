import 'package:dio/dio.dart';
import 'package:the_movie_app_open_source/app/models/actor.dart';
import 'package:the_movie_app_open_source/app/models/description_movie.dart';
import 'package:the_movie_app_open_source/app/utils/constants.dart';

class DescriptionRepository {
  final Dio _client;

  DescriptionRepository(this._client);

  Future<DescriptionMovie> searchDescriptionMovie(int idMovie) async {
    Response response = await _client.get(Constants.baseUrlDescriptionMovie +
        idMovie.toString() +
        "?api_key=" +
        Constants.keyTheMovieAdb);

    return DescriptionMovie.fromJson(response.data);
  }

  Future<List<Actor>> searchActors(int idMovie) async {
    Response response = await _client.get(Constants.baseUrlDescriptionMovie +
        idMovie.toString() +
        "/credits?api_key=" +
        Constants.keyTheMovieAdb);

    return (response.data["cast"] as List)
        .map((actor) => Actor.fromJson(actor))
        .toList();
  }
}
