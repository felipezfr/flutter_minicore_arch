import 'package:flutter/material.dart';
import 'package:flutter_minicore/src/features/auth/interector/atoms/auth_atom.dart';

class ThingsPage extends StatefulWidget {
  const ThingsPage({super.key});

  @override
  State<ThingsPage> createState() => _ThingsPageState();
}

class _ThingsPageState extends State<ThingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Things'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                logoutAction();
              },
            )
          ],
        ),
      ),
      body: Container(),
    );
  }
}
