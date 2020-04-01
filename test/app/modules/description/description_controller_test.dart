import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:the_movie_app_open_source/app/modules/description/description_controller.dart';
import 'package:the_movie_app_open_source/app/modules/description/description_module.dart';

void main() {
  initModule(DescriptionModule());
  DescriptionController description;

  setUp(() {
    description = DescriptionModule.to.get<DescriptionController>();
  });

  group('DescriptionController Test', () {
    test("First Test", () {
      expect(description, isInstanceOf<DescriptionController>());
    });

    test("Set Value", () {
      expect(description.value, equals(0));
      description.increment();
      expect(description.value, equals(1));
    });
  });
}
