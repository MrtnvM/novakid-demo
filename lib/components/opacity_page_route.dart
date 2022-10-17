import 'package:flutter/material.dart';

class OpacityPageRoute<T> extends PageRoute<T> {
  OpacityPageRoute(this.child);
  @override
  Color get barrierColor => Colors.blue;

  @override
  String get barrierLabel => 'OpacityPageRoute';

  final Widget child;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  @override
  bool get maintainState => true;

  @override
  bool get fullscreenDialog => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);
}
