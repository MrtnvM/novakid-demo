import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novakid/core/device_orientation/device_orientation.dart';
import 'package:novakid/core/device_orientation/device_orientation_controller.dart';
import 'package:novakid/presentation/app/novakid_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DeviceOrientationController.setOrientationMask(
    DeviceOrientationMask.portrait,
  );

  runApp(const NovakidApp());
}
