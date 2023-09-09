import 'package:flutter/material.dart';
import 'package:navigation/routes/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade600,
        foregroundColor: Colors.white,
        leading: null,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.home,
              (route) => route.settings.name == Routes.home,
            );
          },
          child: const Text('Log out'),
        ),
      ),
    );
  }
}