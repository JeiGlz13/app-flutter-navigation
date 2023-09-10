import 'package:flutter/cupertino.dart';

Future<int> showCupertinoStyleDialog(BuildContext context, {
  String title = '',
}) async {
  final result = await showCupertinoDialog<int>(
    context: context,
    barrierDismissible: true,
    builder: (context) => CupertinoStyleDialog(title: title),
  );

  return result ?? 1;
}

class CupertinoStyleDialog extends StatelessWidget {
  final String title;
  const CupertinoStyleDialog({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: const Text('How are you doing?'),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context, 1);
          },
          child: const Text('Cancel')
        ),
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context, 2);
          },
          child: const Text('OK')
        ),
      ],
    );
  }
}