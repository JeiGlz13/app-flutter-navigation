import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (_, index) => GestureDetector(
          onTap: () {
            Navigator.pop(context, Colors.primaries[index]);
          },
          child: Container(
            color: Colors.primaries[index],
            height: 70,
          ),
        ),
        itemCount: Colors.primaries.length,
      ),
    );
  }
}