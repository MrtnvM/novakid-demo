import 'package:flutter/material.dart';
import 'package:novakid/presentation/home/home_page.dart';
import 'package:novakid/presentation/main/main_page_tabs_config.dart';
import 'package:novakid/presentation/schedule/schedule_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final currentTab = MAIN_PAGE_TABS[_currentTabIndex];
    final appBar = currentTab.appBarBuilder?.call(context);
    final barItems = MAIN_PAGE_TABS.map((tab) => tab.barItem).toList();

    return Scaffold(
      appBar: appBar,
      body: IndexedStack(
        index: _currentTabIndex,
        children: const [
          HomePage(),
          SizedBox(),
          SchedulePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentTabIndex,
        onTap: (index) {
          final isGameTab = MAIN_PAGE_TABS[index].barItem.label == 'Game';

          if (!isGameTab) {
            setState(() => _currentTabIndex = index);
          }

          final onTabSelected = MAIN_PAGE_TABS[index].onTabSelected;
          onTabSelected?.call(context);
        },
        items: barItems,
      ),
    );
  }
}
