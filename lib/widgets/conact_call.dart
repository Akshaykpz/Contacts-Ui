import 'package:flutter/material.dart';

class ConatactCall extends StatelessWidget {
  const ConatactCall({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "call",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "Text",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "Video",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
