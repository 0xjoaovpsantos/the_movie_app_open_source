// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$currentSectionDescriptionAtom =
      Atom(name: '_HomeBase.currentSectionDescription');

  @override
  String get currentSectionDescription {
    _$currentSectionDescriptionAtom.context
        .enforceReadPolicy(_$currentSectionDescriptionAtom);
    _$currentSectionDescriptionAtom.reportObserved();
    return super.currentSectionDescription;
  }

  @override
  set currentSectionDescription(String value) {
    _$currentSectionDescriptionAtom.context.conditionallyRunInAction(() {
      super.currentSectionDescription = value;
      _$currentSectionDescriptionAtom.reportChanged();
    }, _$currentSectionDescriptionAtom,
        name: '${_$currentSectionDescriptionAtom.name}_set');
  }

  final _$currentListMoviesAtom = Atom(name: '_HomeBase.currentListMovies');

  @override
  List<Movie> get currentListMovies {
    _$currentListMoviesAtom.context.enforceReadPolicy(_$currentListMoviesAtom);
    _$currentListMoviesAtom.reportObserved();
    return super.currentListMovies;
  }

  @override
  set currentListMovies(List<Movie> value) {
    _$currentListMoviesAtom.context.conditionallyRunInAction(() {
      super.currentListMovies = value;
      _$currentListMoviesAtom.reportChanged();
    }, _$currentListMoviesAtom, name: '${_$currentListMoviesAtom.name}_set');
  }

  final _$upComingMoviesAtom = Atom(name: '_HomeBase.upComingMovies');

  @override
  List<Movie> get upComingMovies {
    _$upComingMoviesAtom.context.enforceReadPolicy(_$upComingMoviesAtom);
    _$upComingMoviesAtom.reportObserved();
    return super.upComingMovies;
  }

  @override
  set upComingMovies(List<Movie> value) {
    _$upComingMoviesAtom.context.conditionallyRunInAction(() {
      super.upComingMovies = value;
      _$upComingMoviesAtom.reportChanged();
    }, _$upComingMoviesAtom, name: '${_$upComingMoviesAtom.name}_set');
  }

  final _$popularMoviesAtom = Atom(name: '_HomeBase.popularMovies');

  @override
  List<Movie> get popularMovies {
    _$popularMoviesAtom.context.enforceReadPolicy(_$popularMoviesAtom);
    _$popularMoviesAtom.reportObserved();
    return super.popularMovies;
  }

  @override
  set popularMovies(List<Movie> value) {
    _$popularMoviesAtom.context.conditionallyRunInAction(() {
      super.popularMovies = value;
      _$popularMoviesAtom.reportChanged();
    }, _$popularMoviesAtom, name: '${_$popularMoviesAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void updateSection(String section, List<Movie> currentList) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.updateSection(section, currentList);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'currentSectionDescription: ${currentSectionDescription.toString()},currentListMovies: ${currentListMovies.toString()},upComingMovies: ${upComingMovies.toString()},popularMovies: ${popularMovies.toString()}';
    return '{$string}';
  }
}
