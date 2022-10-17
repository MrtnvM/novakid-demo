import 'package:flutter/src/widgets/framework.dart';
import 'package:novakid/components/page_description_label.dart';
import 'package:novakid/resourses/images.dart';

class NoUpcomingLessonsWidget extends StatelessWidget {
  const NoUpcomingLessonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageDescription(
      text: 'You have no upcoming lessons\nClick button below to book one',
      image: AppImages.noUpcomingLessons,
    );
  }
}
