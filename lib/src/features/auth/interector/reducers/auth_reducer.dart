import 'package:asp/asp.dart';
import 'package:flutter_minicore/src/features/auth/interector/atoms/auth_atom.dart';
import 'package:flutter_minicore/src/features/auth/interector/services/auth_service.dart';
import 'package:flutter_minicore/src/features/auth/interector/states/auth_state.dart';

class AuthReducer extends Reducer {
  final AuthService service;

  AuthReducer(this.service) {
    on(() => [checkAuthAction], _checkAuth);
    on(() => [loginWithEmailAction], _loginWithEmail);
    on(() => [logoutAction], _logout);
  }

  _checkAuth() {
    authState.value = LoadingAuth();
    service.checkAuth().then(authState.setValue);
  }

  _loginWithEmail() {
    final dto = loginWithEmailAction.value;
    service.loginWithEmail(dto!).then(authState.setValue);
  }

  _logout() {
    authState.value = LoadingAuth();
    service.logout().then(authState.setValue);
  }
}
