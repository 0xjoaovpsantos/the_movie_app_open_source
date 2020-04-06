import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:the_movie_app_open_source/app/models/movie.dart';

import 'package:the_movie_app_open_source/app/modules/home/home_page.dart';
import 'package:the_movie_app_open_source/app/modules/home/widgets/list_horizontal_movies_widget.dart';

main() {
  String currentSection = "Upcoming Movies";

  Movie movieWithTitleVeryLong = Movie(
      id: 0,
      posterPath: "8WUVHemHFH2ZIP6NWkwlHWsyrEL.jpg",
      releaseDate: "2020-04-06",
      title:
          "Title very very very very very very very very very very very very very long");

  Movie movieWithoutName = Movie(
      id: 1,
      posterPath: "8WUVHemHFH2ZIP6NWkwlHWsyrEL.jpg",
      releaseDate: "2020-04-06");

  List<Movie> movies;
  testWidgets('If movie name is long', (WidgetTester tester) async {
    movies = [movieWithTitleVeryLong];
    await tester.pumpWidget(ListHorizontalMoviesWidget(
        currentSection: currentSection, movies: movies));
    final titleFinder = find.text(
        'Title very very very very very very very very very very very very very long');
    expect(titleFinder, findsOneWidget);
  });
}
