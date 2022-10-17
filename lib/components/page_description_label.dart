import 'package:flutter/material.dart';
import 'package:novakid/resourses/images.dart';

class PageDescription extends StatelessWidget {
  const PageDescription({
    super.key,
    required this.text,
    required this.image,
  });

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image, width: 200),
            const SizedBox(height: 24),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
