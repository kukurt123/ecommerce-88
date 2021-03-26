import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home/screen/home.dart';
import 'main.dart';

class AppModule extends MainModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        // Bind((i) => Page1Bloc(repo: new Page1Repository())),
        // Bind((i) => Page1_3rx(), singleton: true),
        // Bind((i) => MainBloc()),
        // Bind((i) => AuthService()),
        // Bind((i) => SignInManager()),
        // Bind((i) => EmailSignInChangeModel(), singleton: false),
        // Bind((i) => QrBloc()),
        // Bind((i) => UberUserBloc()),
      ];
  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/main', module: MainRouting()),
      ];
}

//child
class MainRouting extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/home',
          child: (_, __) => Home(),
        ),
      ];

  static Inject get to => Inject<MainModule>.of();
}
