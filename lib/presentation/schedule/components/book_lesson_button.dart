import 'package:flutter/material.dart';

class BookLessonButton extends StatelessWidget {
  const BookLessonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.black87),
        backgroundColor: MaterialStateProperty.all(Colors.yellow),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.add),
          SizedBox(width: 8),
          Text('Book Lesson'),
        ],
      ),
    );
  }
}
