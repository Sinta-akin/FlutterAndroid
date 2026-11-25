import 'package:flutter/material.dart';

class SocialMediaCard extends StatelessWidget {
  final String imagePath;
  final String label;

  const SocialMediaCard({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        color: Colors.blue.shade50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 50, width: 50),
            SizedBox(width: 15),
            Text(label),
          ],
        ),
      ),
    );
  }
}
