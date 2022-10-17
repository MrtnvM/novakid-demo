import 'package:flutter/material.dart';
import 'package:novakid/presentation/home/components/lessons_info_item.dart';

class LessonsInfoWidget extends StatelessWidget {
  const LessonsInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey.withAlpha(30))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const LessonsInfoItem(
            title: '1',
            description: 'Premium lesson',
          ),
          const Text(
            'or',
            style: TextStyle(fontSize: 10, letterSpacing: 0.7),
          ),
          const LessonsInfoItem(
            title: '1',
            description: 'Standart lesson',
          ),
          Container(
            width: 1,
            height: 32,
            color: Colors.grey.withAlpha(70),
          ),
          const LessonsInfoItem(
            title: '0 USD',
            description: 'Bonus',
          ),
        ],
      ),
    );
  }
}
