import 'package:the_movie_app_open_source/app/modules/description/description_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_movie_app_open_source/app/modules/description/description_page.dart';

class DescriptionModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DescriptionController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => DescriptionPage()),
      ];

  static Inject get to => Inject<DescriptionModule>.of();
}
