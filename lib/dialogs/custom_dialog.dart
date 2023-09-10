import 'package:flutter/material.dart';

Future<void> showCustomDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => const MyCustomDialog(),
  );
}

class MyCustomDialog extends StatelessWidget {
  const MyCustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          width: 360,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);  
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 30,
                    )
                  ),
                ),
                Text(
                  'Congratulations',
                  style: TextStyle(
                    color: Colors.green.shade400,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.green.shade400,
                  size: 100,
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Tempor enim irure est proident dolor. Nisi proident sit Lorem velit fugiat labore nulla velit do ea deserunt labore ut.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}