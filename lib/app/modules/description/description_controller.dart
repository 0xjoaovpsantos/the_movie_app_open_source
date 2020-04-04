import 'package:mobx/mobx.dart';
import 'package:the_movie_app_open_source/app/models/actor.dart';
import 'package:the_movie_app_open_source/app/models/description_movie.dart';
import 'package:the_movie_app_open_source/app/modules/description/repositories/description_repository.dart';

part 'description_controller.g.dart';

class DescriptionController = _DescriptionBase with _$DescriptionController;

abstract class _DescriptionBase with Store {
  final DescriptionRepository _repository;

  _DescriptionBase(this._repository);

  @action
  searchDescriptionMovie(int idMovie) {
    _repository.searchDescriptionMovie(idMovie).then((value) => movie = value);
    _repository.searchActors(idMovie).then((value) => actors = value);
  }

  @observable
  DescriptionMovie movie;

  @observable
  List<Actor> actors;

  @action
  String genresToString() {
    String genres = "";
    movie.genres.forEach((genre) {
      genres += genre.name + ", ";
    });

    return genres.substring(0, genres.length - 2);
  }
}
