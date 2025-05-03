import 'package:flutter/material.dart';

import '../core/imagePaths.dart';

class MobileHomeContent extends StatelessWidget {
  const MobileHomeContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage(ImagePath.getImagePath(null, 0)),
        ),
        const SizedBox(height: 24),
        const Text(
          "Hello, I'm Waquar 👋",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        const Text(
          "A Flutter & Mobile App Developer\nCrafting beautiful, functional apps.",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            backgroundColor: Colors.indigo,
          ),
          child: const Text("View Projects"),
        ),
      ],
    );
  }
}