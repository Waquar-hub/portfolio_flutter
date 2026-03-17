import 'package:flutter/material.dart';

import '../core/imagePaths.dart';

class DesktopHomeContent extends StatelessWidget {
  const DesktopHomeContent();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left side: Text content
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hello, I'm Waquar 👋     ",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                "A Flutter & Mobile App Developer\nCrafting beautiful, functional apps.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // View work
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  backgroundColor: Colors.indigo,
                ),
                child: const Text("View Projects"),
              )
            ],
          ),
        ),
        // Right side: Profile Image
        const SizedBox(width: 50),
         Expanded(
          child: CircleAvatar(
            radius: 120,
            backgroundImage:  AssetImage(ImagePath.getImagePath(null, 0)),
          ),
        )
      ],
    );
  }
}