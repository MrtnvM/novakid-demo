import 'package:flutter/material.dart';
import 'package:vimeo_player_flutter/vimeo_player_flutter.dart';

class NovakidGreetingVideoWidget extends StatelessWidget {
  const NovakidGreetingVideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: const VimeoPlayer(videoId: '504845695'),
      ),
    );
  }
}
