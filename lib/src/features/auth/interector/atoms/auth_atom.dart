import 'package:asp/asp.dart';
import 'package:flutter_minicore/src/features/auth/interector/dtos/email_credential_dto.dart';
import 'package:flutter_minicore/src/features/auth/interector/states/auth_state.dart';

final authState = Atom<AuthState>(
  InitAuth(),
  key: 'authState',
);

//Actions
final checkAuthAction = Atom.action(
  key: 'checkAuthAction',
);

final loginWithEmailAction = Atom<EmailCredentialDTO?>(
  null,
  key: 'loginWithEmailAction',
);

//Actions
final logoutAction = Atom.action(
  key: 'logoutAction',
);
