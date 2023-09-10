import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/color_picker.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/routes/routes.dart';

class PageData {
  final String name;
  final String label;
  final Object? arguments;
  final void Function(Object?)? onResult;

  PageData({
    required this.name,
    required this.label,
    this.arguments,
    this.onResult,
  });
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Color _color = Colors.blue.shade600;
  List<PageData> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [
      PageData(name: Routes.login, label: 'Go to login', arguments: 'test@test.com'),
      PageData(name: Routes.counter, label: 'Go to counter'),
      PageData(
        name: Routes.colorPicker,
        label: 'Pick color',
        onResult: (result) {
          if (result != null) {
            setState(() {
              _color = result as Color;
            });
          }
        },
      ),
      PageData(name: Routes.dialogs, label: 'Go to dialogs'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (_, index) {
            final data = _pages[index];
            return ListTile(
              title: Text(data.label),
              onTap: () async {
                final result = await Navigator.pushNamed(
                  context,
                  data.name,
                  arguments: data.arguments,
                );

                if (data.onResult != null) {
                  data.onResult!(result);
                }
              },
            );
          },
          itemCount: _pages.length,
        )
      ),
    );
  }
}