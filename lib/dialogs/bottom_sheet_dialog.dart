import 'package:flutter/material.dart';

Future<void> showBottomSheetDialog(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 10),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(Icons.photo),
              title: const Text('Photos'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(Icons.music_note),
              title: const Text('Music'),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(Icons.photo_camera),
              title: const Text('Video'),
            ),
          ],
        ),
      ),
    ),
  );
}