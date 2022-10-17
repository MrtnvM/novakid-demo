import 'package:flutter/material.dart';

class LessonsInfoItem extends StatelessWidget {
  const LessonsInfoItem({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: const TextStyle(
            fontSize: 10,
            letterSpacing: 0.7,
          ),
        ),
      ],
    );
  }
}
