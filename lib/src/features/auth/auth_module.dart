import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_minicore/src/features/auth/data/services/firebase_auth_service.dart';
import 'package:flutter_minicore/src/features/auth/interector/reducers/auth_reducer.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'ui/pages/login_page.dart';
import 'interector/services/auth_service.dart';

class AuthModule extends Module {
  @override
  void exportedBinds(i) {
    i.add<AuthService>(FirebaseAuthService.new);
    i.addSingleton(AuthReducer.new);
  }

  @override
  void binds(Injector i) {
    i.addInstance<FirebaseAuth>(FirebaseAuth.instance);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/login',
      child: (context) => const LoginPage(),
    );
  }
}
