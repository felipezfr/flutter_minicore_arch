import 'package:flutter_minicore/src/features/auth/interector/dtos/email_credential_dto.dart';
import 'package:flutter_minicore/src/features/auth/interector/entities/tokenization.dart';
import 'package:flutter_minicore/src/features/auth/interector/services/auth_service.dart';
import 'package:flutter_minicore/src/features/auth/interector/states/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService extends AuthService {
  final FirebaseAuth auth;

  FirebaseAuthService(this.auth);
  @override
  Future<AuthState> checkAuth() async {
    final token = await auth.currentUser?.getIdToken();
    if (token == null) {
      return UnLogged();
    } else {
      return Logged(
        Tokenization(accessToken: token),
      );
    }
  }

  @override
  Future<AuthState> loginWithEmail(EmailCredentialDTO dto) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: dto.email, password: dto.password);

      return checkAuth();
    } catch (e) {
      return UnLogged();
    }
  }

  @override
  Future<AuthState> logout() async {
    await auth.signOut();
    return UnLogged();
  }
}
