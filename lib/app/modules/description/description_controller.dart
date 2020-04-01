import 'package:mobx/mobx.dart';

part 'description_controller.g.dart';

class DescriptionController = _DescriptionBase with _$DescriptionController;

abstract class _DescriptionBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
