import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_minicore/src/features/auth/auth_module.dart';
import 'package:flutter_minicore/src/features/splash/ui/pages/splash_page.dart';
import 'package:flutter_minicore/src/features/things/things_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        AuthModule(),
      ];

  @override
  void binds(i) {
    i.addInstance<FirebaseAuth>(FirebaseAuth.instance);
  }

  @override
  void routes(r) {
    r.child('/splash', child: (context) => const SplashPage());
    r.module('/auth', module: AuthModule());
    r.module('/things', module: ThingsModule());
  }
}
