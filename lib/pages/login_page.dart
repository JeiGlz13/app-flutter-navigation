import 'package:flutter/material.dart';
import 'package:navigation/pages/profile_page.dart';

class LoginPage extends StatelessWidget {
  final String email;
  const LoginPage({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    // final modalRoute = ModalRoute.of(context)!;
    // final arguments = modalRoute.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade600,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  settings: const RouteSettings(name: 'profile'),
                  builder: (_) => const ProfilePage(),
                );
                Navigator.push(context, route);
              },
              child: const Text('Go to profile'),
            ),
            Text(email),
            Expanded(
              child: ListView.builder(
                itemBuilder: (_, index) => Container(
                  color: Colors.primaries[index],
                  height: 70,
                ),
                itemCount: Colors.primaries.length,
              )
            ),
          ],
        ),
      ),
    );
  }
}