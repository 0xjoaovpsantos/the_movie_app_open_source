import 'package:dio/dio.dart';
import 'package:the_movie_app_open_source/app/modules/description/description_module.dart';
import 'package:the_movie_app_open_source/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_movie_app_open_source/app/modules/home/home_page.dart';
import 'package:the_movie_app_open_source/app/modules/home/repositories/movie_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        //Controller
        Bind((i) => HomeController(i.get<MovieRepository>())),
        //Repository
        Bind((i) => MovieRepository(i.get<Dio>())),
        //Outro
        Bind((i) => Dio())
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
