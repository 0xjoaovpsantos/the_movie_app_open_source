import 'package:dio/dio.dart';
import 'package:the_movie_app_open_source/app/modules/description/description_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_movie_app_open_source/app/modules/description/description_page.dart';
import 'package:the_movie_app_open_source/app/modules/description/repositories/description_repository.dart';

class DescriptionModule extends ChildModule {
  @override
  List<Bind> get binds => [
        //Controller
        Bind((i) => DescriptionController(i.get<DescriptionRepository>())),
        //Repository
        Bind((i) => DescriptionRepository(i.get<Dio>())),
        //Others
        Bind((i) => Dio())
      ];

  @override
  List<Router> get routers => [
        Router('/:idMovie',
            child: (_, args) =>
                DescriptionPage(idMovie: int.parse(args.params["idMovie"]))),
      ];

  static Inject get to => Inject<DescriptionModule>.of();
}
