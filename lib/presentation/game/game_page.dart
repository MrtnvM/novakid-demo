import 'dart:io';
import 'package:flutter/material.dart';
import 'package:novakid/core/device_orientation/device_orientation.dart';
import 'package:novakid/core/device_orientation/device_orientation_controller.dart';
import 'package:novakid/presentation/game/components/game_browser_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool _isLoading = true;
  bool _isGameClosed = false;

  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) {
      WebView.platform = AndroidWebView();
    }

    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        DeviceOrientationController.setOrientationMask(
          DeviceOrientationMask.landscapeLeft,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        if (!_isGameClosed)
          Positioned.fill(
            child: GameBrowserWidget(
              onGameLoaded: _onGameLoaded,
              onExitGame: _onExitGame,
            ),
          ),
        if (_isLoading)
          Positioned.fill(
            child: Container(
              color: Colors.blue,
            ),
          ),
      ],
    );
  }

  void _onGameLoaded() {
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    });
  }

  Future<void> _onExitGame() async {
    setState(() {
      _isLoading = true;
      _isGameClosed = true;
    });

    DeviceOrientationController.setOrientationMask(
      DeviceOrientationMask.portrait,
    );

    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        Navigator.of(context).pop();
      }
    });
  }
}
