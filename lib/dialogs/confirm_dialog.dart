import 'package:flutter/material.dart';

Future<bool?> showConfirmDialog(
  BuildContext context,
  {
    String title = '',
    bool dismissible = true,
  }
) async {
  final result = await showDialog<bool>(
    context: context,
    barrierColor: Colors.grey.shade800.withOpacity(0.5),
    builder: (context) => ConfirmDialog(title: title, dismissible: dismissible),
  );

  return result ?? false;
}

class ConfirmDialog extends StatelessWidget {
  final String title;
  final bool dismissible;

  const ConfirmDialog({
    super.key,
    required this.title,
    required this.dismissible,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => dismissible,
      child: AlertDialog(
        title: Text(title, textAlign: TextAlign.center),
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        actionsAlignment: MainAxisAlignment.end,
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text(
              'No',
              style: TextStyle(color: Colors.red.shade400),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: const Text('yes'),
          ),
        ],
      ),
    );
  }
}