import 'package:flutter/material.dart';
import 'package:novakid/presentation/home/components/lessons_info_widget.dart';
import 'package:novakid/presentation/home/components/novakid_greeting_video_widget.dart';
import 'package:novakid/presentation/home/components/privacy_note_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        LessonsInfoWidget(),
        NovakidGreetingVideoWidget(),
        PrivacyNoteWidget(),
      ],
    );
  }
}
