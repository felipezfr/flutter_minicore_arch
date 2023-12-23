import 'package:flutter/material.dart';
import 'package:flutter_minicore/src/features/auth/interector/atoms/auth_atom.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1))
        .whenComplete(() => checkAuthAction());
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text('Carregando...'),
      ),
    );
  }
}
