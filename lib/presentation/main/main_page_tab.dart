import 'package:flutter/material.dart';

class MainPageTab {
  final BottomNavigationBarItem barItem;
  final Widget Function(BuildContext) pageBuilder;
  final void Function(BuildContext)? onTabSelected;
  final PreferredSizeWidget Function(BuildContext)? appBarBuilder;

  MainPageTab({
    required this.barItem,
    required this.pageBuilder,
    this.onTabSelected,
    this.appBarBuilder,
  });
}
