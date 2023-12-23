import 'package:flutter_minicore/src/features/auth/interector/entities/tokenization.dart';

sealed class AuthState {}

class InitAuth implements AuthState {}

class Logged implements AuthState {
  final Tokenization token;

  Logged(this.token);
}

class UnLogged implements AuthState {}

class LoadingAuth implements AuthState {}
