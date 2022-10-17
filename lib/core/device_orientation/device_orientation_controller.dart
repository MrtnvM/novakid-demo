import 'dart:io';

import 'package:flutter/services.dart';
import 'package:novakid/core/device_orientation/device_orientation.dart';
import 'package:novakid/core/device_orientation/exceptions/change_device_orientation_exception.dart';

class DeviceOrientationController {
  static const _methodChannel = MethodChannel('novakid.com/device-orientation');

  static Future<bool> setOrientationMask(DeviceOrientationMask mask) async {
    if (Platform.isIOS) {
      return _setIosDeviceOrientationMask(mask);
    }

    _setDeviceOrientationMask(mask);
    return true;
  }

  static Future<bool> _setIosDeviceOrientationMask(
      DeviceOrientationMask mask) async {
    try {
      final bool result = await _methodChannel.invokeMethod(
        'setOrientationMask',
        {
          'orientationMask': mask.index,
        },
      );

      return result;
    } on PlatformException catch (e) {
      throw ChangeDeviceOrientationException(e);
    }
  }

  static void _setDeviceOrientationMask(DeviceOrientationMask mask) {
    switch (mask) {
      case DeviceOrientationMask.portrait:
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitDown,
        ]);
        break;

      case DeviceOrientationMask.landscape:
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);
        break;

      case DeviceOrientationMask.all:
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);
        break;

      case DeviceOrientationMask.allButUpsideDown:
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitDown,
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ]);
        break;

      case DeviceOrientationMask.landscapeLeft:
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeLeft,
        ]);
        break;

      case DeviceOrientationMask.landscapeRight:
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
        ]);
        break;

      case DeviceOrientationMask.portraitUpsideDown:
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
        break;
    }
  }
}
