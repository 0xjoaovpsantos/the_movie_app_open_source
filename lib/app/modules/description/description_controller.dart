import 'package:mobx/mobx.dart';
import 'package:the_movie_app_open_source/app/models/description_movie.dart';
import 'package:the_movie_app_open_source/app/modules/description/repositories/description_repository.dart';

part 'description_controller.g.dart';

class DescriptionController = _DescriptionBase with _$DescriptionController;

abstract class _DescriptionBase with Store {
  final DescriptionRepository _repository;

  _DescriptionBase(this._repository) {
    _repository.searchDescriptionMovie(1).then((value) => movie = value);
  }

  @observable
  DescriptionMovie movie;
}
