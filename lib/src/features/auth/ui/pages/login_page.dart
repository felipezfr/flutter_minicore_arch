import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_minicore/src/features/auth/interector/atoms/auth_atom.dart';
import 'package:flutter_minicore/src/features/auth/interector/dtos/email_credential_dto.dart';
import 'package:flutter_minicore/src/features/auth/interector/states/auth_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var dto = EmailCredentialDTO();

  @override
  Widget build(BuildContext context) {
    final AuthState state = context.select(() => authState.value);
    final bool isLoading = state is LoadingAuth;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login'),
            const SizedBox(
              height: 60,
            ),
            TextFormField(
              enabled: !isLoading,
              onChanged: (value) {
                dto.email = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              enabled: !isLoading,
              onChanged: (value) {
                dto.password = value;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ),
            ),
            ElevatedButton(
              onPressed: isLoading
                  ? null
                  : () {
                      loginWithEmailAction.value = dto;
                    },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
