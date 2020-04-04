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

  @override
  String toString() {
    final string = 'movie: ${movie.toString()}';
    return '{$string}';
  }
}
