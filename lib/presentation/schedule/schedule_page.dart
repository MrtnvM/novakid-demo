import 'package:flutter/material.dart';
import 'package:novakid/presentation/schedule/components/no_upcoming_lessons_widget.dart';
import 'package:novakid/presentation/schedule/tabs/no_completed_lessons_tab.dart';
import 'package:novakid/presentation/schedule/tabs/no_upcoming_lessons_tab.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Schedule',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Upcoming'),
              Tab(text: 'Completed'),
            ],
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black38,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              fontSize: 16,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            NoUpcomingLessonsTab(),
            NoCompletedLessonsTab(),
          ],
        ),
      ),
    );
  }
}
