import 'package:mobx/mobx.dart';
import 'package:the_movie_app_open_source/app/models/movie.dart';
import 'package:the_movie_app_open_source/app/modules/home/repositories/movie_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final MovieRepository _repository;

  _HomeBase(this._repository) {
    _repository.getMoviesUpComing().then((value) => upComingMovies = value);
    _repository.getMoviesPopular().then((value) => popularMovies = value);
  }

  @observable
  List<Movie> upComingMovies;

  @observable
  List<Movie> popularMovies;
}
