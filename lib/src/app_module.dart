import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_minicore/src/features/auth/auth_module.dart';
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
    r.module('/auth', module: AuthModule());
  }
}
