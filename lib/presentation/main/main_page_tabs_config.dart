import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:novakid/components/opacity_page_route.dart';
import 'package:novakid/presentation/game/game_page.dart';
import 'package:novakid/presentation/home/home_page.dart';
import 'package:novakid/presentation/main/main_page_tab.dart';
import 'package:novakid/resourses/images.dart';

final _homeTab = MainPageTab(
  barItem: const BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  pageBuilder: (_) => const HomePage(),
  appBarBuilder: (_) => AppBar(
    title: SvgPicture.asset(
      AppImages.logo,
      height: 30,
    ),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    backgroundColor: Colors.white,
    centerTitle: false,
    elevation: 0,
  ),
);

final _gameTab = MainPageTab(
  barItem: const BottomNavigationBarItem(
    icon: Icon(
      Icons.star_outline,
      size: 32,
    ),
    label: 'Game',
  ),
  pageBuilder: (_) => Container(),
  onTabSelected: (context) {
    final route = OpacityPageRoute(const GamePage());
    Navigator.of(context).push(route);
  },
);

final _scheduleTab = MainPageTab(
  barItem: const BottomNavigationBarItem(
    icon: Icon(
      Icons.calendar_month_outlined,
    ),
    label: 'Schedule',
  ),
  pageBuilder: (_) => Container(),
);

// ignore: non_constant_identifier_names
final MAIN_PAGE_TABS = [
  _homeTab,
  _gameTab,
  _scheduleTab,
];
