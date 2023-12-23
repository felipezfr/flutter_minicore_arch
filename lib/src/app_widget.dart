import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_minicore/src/features/auth/interector/atoms/auth_atom.dart';
import 'package:flutter_minicore/src/features/auth/interector/states/auth_state.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();

    rxObserver(() => authState.value, effect: (state) {
      if (state is UnLogged) {
        Modular.to.navigate('/auth/login');
      } else if (state is Logged) {
        Modular.to.navigate('/things/');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/splash');

    return MaterialApp.router(
      title: 'MiniCore Arch',
      theme: ThemeData(),
      routerConfig: Modular.routerConfig,
    );
  }
}
