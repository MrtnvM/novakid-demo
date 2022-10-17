class ChangeDeviceOrientationException implements Exception {
  final dynamic cause;

  ChangeDeviceOrientationException(this.cause);

  @override
  String toString() => 'ChangeDeviceOrientationException: $cause';
}
