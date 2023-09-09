import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/routes/routes.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  void _onTap (BuildContext context) {
    final Faker faker = Faker();
    final String email = faker.internet.email();

    Navigator.pushNamed(
      context,
      Routes.login,
      arguments: email,
    );

    // final route = MaterialPageRoute(
    //   settings: const RouteSettings(name: '/login'),
    //   builder: (_) => LoginPage(email: email),
    // );
    // Navigator.push(context, route);
    // Navigator.pushReplacement(context, route);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade600,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              onTap: () => _onTap(context),
              // onTap: () => _onTap(context),

              // onTap: () {
              //   final route = MaterialPageRoute(
              //     builder: (_) {
              //       final faker = Faker();
              //       return const LoginPage();
              //     },
              //     settings: RouteSettings(
              //       arguments: faker.internet.email(),
              //     ),
              //   );
              //   Navigator.push(context, route);
              // },
              title: const Text('Go to login'),
              trailing: const Icon(Icons.arrow_right_outlined),
            ),
            ListTile(
              onTap: () => Navigator.pushNamed(context, Routes.counter),
              title: const Text('Go to counter'),
              trailing: const Icon(Icons.arrow_right_outlined),
            ),
          ],
        ) 
      ),
    );
  }
}