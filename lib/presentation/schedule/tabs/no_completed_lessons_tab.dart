import 'package:flutter/material.dart';
import 'package:novakid/components/page_description_label.dart';
import 'package:novakid/presentation/schedule/components/book_lesson_button.dart';
import 'package:novakid/resourses/images.dart';

class NoCompletedLessonsTab extends StatelessWidget {
  const NoCompletedLessonsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Spacer(),
        PageDescription(
          text: 'You have no completed lessons\nClick button below to book one',
          image: AppImages.noCompletedLessons,
        ),
        Spacer(),
        SizedBox(height: 16),
        BookLessonButton(),
        SizedBox(height: 16),
      ],
    );
  }
}
