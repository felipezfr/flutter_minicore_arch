import 'package:flutter_minicore/src/features/things/ui/pages/things_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ThingsModule extends Module {
  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const ThingsPage(),
    );
  }
}
