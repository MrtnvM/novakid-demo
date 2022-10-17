import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GameBrowserWidget extends StatefulWidget {
  const GameBrowserWidget({
    super.key,
    required this.onExitGame,
    this.onGameLoaded,
  });

  final VoidCallback onExitGame;
  final VoidCallback? onGameLoaded;

  @override
  State<GameBrowserWidget> createState() => _GameBrowserWidgetState();
}

class _GameBrowserWidgetState extends State<GameBrowserWidget> {
  final gameUrl =
      'https://school.novakidschool.com/kid-phaser/dashboard/?userId=785846&studentId=708096&hash=9yXXtvVESIiHhBNdxUDbLQ&rp=fohoff5a&timestampAfter=1665910458631';

  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) {
      WebView.platform = AndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
      initialUrl: gameUrl,
      onPageFinished: (_) => widget.onGameLoaded?.call(),
      navigationDelegate: (request) {
        const exitGamePath = "novakid://school.novakidschool.com/dashboard";

        if (request.url == exitGamePath) {
          widget.onExitGame();
          return NavigationDecision.prevent;
        }

        return NavigationDecision.navigate;
      },
    );
  }
}
