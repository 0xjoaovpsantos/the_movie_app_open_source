// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DescriptionController on _DescriptionBase, Store {
  final _$movieAtom = Atom(name: '_DescriptionBase.movie');

  @override
  DescriptionMovie get movie {
    _$movieAtom.context.enforceReadPolicy(_$movieAtom);
    _$movieAtom.reportObserved();
    return super.movie;
  }

  @override
  set movie(DescriptionMovie value) {
    _$movieAtom.context.conditionallyRunInAction(() {
      super.movie = value;
      _$movieAtom.reportChanged();
    }, _$movieAtom, name: '${_$movieAtom.name}_set');
  }

  final _$actorsAtom = Atom(name: '_DescriptionBase.actors');

  @override
  List<Actor> get actors {
    _$actorsAtom.context.enforceReadPolicy(_$actorsAtom);
    _$actorsAtom.reportObserved();
    return super.actors;
  }

  @override
  set actors(List<Actor> value) {
    _$actorsAtom.context.conditionallyRunInAction(() {
      super.actors = value;
      _$actorsAtom.reportChanged();
    }, _$actorsAtom, name: '${_$actorsAtom.name}_set');
  }

  final _$_DescriptionBaseActionController =
      ActionController(name: '_DescriptionBase');

  @override
  dynamic searchDescriptionMovie(int idMovie) {
    final _$actionInfo = _$_DescriptionBaseActionController.startAction();
    try {
      return super.searchDescriptionMovie(idMovie);
    } finally {
      _$_DescriptionBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String genresToString() {
    final _$actionInfo = _$_DescriptionBaseActionController.startAction();
    try {
      return super.genresToString();
    } finally {
      _$_DescriptionBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'movie: ${movie.toString()},actors: ${actors.toString()}';
    return '{$string}';
  }
}
