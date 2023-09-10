import 'package:flutter/material.dart';
import 'package:navigation/dialogs/confirm_dialog.dart';
import 'package:navigation/dialogs/cupertino_dialog.dart';
import 'package:navigation/dialogs/custom_dialog.dart';

import '../dialogs/bottom_sheet_dialog.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade400,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Show info dialog'),
            onTap: () async {
              await showDialog(
                context: context,
                builder: (context) => const MyDialog(),
              );
            },
          ),
          ListTile(
            title: const Text('Show confirm dialog'),
            onTap: () async {
              final result = await showConfirmDialog(context, title: 'Confirmar seleccion');
            },
          ),
          ListTile(
            title: const Text('Show cupertino dialog'),
            onTap: () async {
              final result = await showCupertinoStyleDialog(context, title: 'Cupertino Dialog');
            },
          ),
          ListTile(
            title: const Text('Show bottom sheet dialog'),
            onTap: () async {
              final result = await showBottomSheetDialog(context);
            },
          ),
          ListTile(
            title: const Text('Show custom dialog'),
            onTap: ()  {
              showCustomDialog(context);
            },
          ),
        ],
      ),
    );
  }
}

class MyDialog extends StatelessWidget {
  const MyDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('OK'),
        ),
      ],
      content: const Text('My dialog'),
    );
  }
}