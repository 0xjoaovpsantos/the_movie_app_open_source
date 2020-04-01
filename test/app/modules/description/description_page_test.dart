import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:the_movie_app_open_source/app/modules/description/description_page.dart';

main() {
  testWidgets('DescriptionPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(DescriptionPage(title: 'Description')));
    final titleFinder = find.text('Description');
    expect(titleFinder, findsOneWidget);
  });
}
