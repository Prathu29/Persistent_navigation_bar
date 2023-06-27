import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:software_kernal_project/screens/screen1.dart';
import 'package:software_kernal_project/screens/screen2.dart';
import 'package:software_kernal_project/screens/screen3.dart';
import 'package:software_kernal_project/screens/screen4.dart';
import 'package:badges/badges.dart' as badges;

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int badgeCount = 0;
  int badgeCount1 = 0;
  int badgeCount2 = 0;
  void updateBadgeCount(int change) {
    int newCount = badgeCount + change;
    if (newCount >= 0) {
      setState(() {
        badgeCount = newCount;
      });
    }
  }

  void updateBadgeCount1(int change1) {
    int newCount = badgeCount1 + change1;
    if (newCount >= 0) {
      setState(() {
        badgeCount1 = newCount;
      });
    }
  }

  void updateBadgeCount2(int change2) {
    int newCount = badgeCount2 + change2;
    if (newCount >= 0) {
      setState(() {
        badgeCount2 = newCount;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        Screen1(updateBadgeCount: updateBadgeCount),
        Screen2(updateBadgeCount1: updateBadgeCount1),
        Screen3(updateBadgeCount2: updateBadgeCount2),
        const Screen4(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: badges.Badge(
            badgeContent: Text(
              '$badgeCount',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            child: const Icon(Icons.credit_card),
          ),
          title: ("Notifications"),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: badges.Badge(
            badgeContent: Text(
              '$badgeCount1',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            child: const Icon(Icons.contactless),
          ),
          title: ("Cart"),
          activeColorPrimary: Colors.green,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: badges.Badge(
            badgeContent: Text(
              '$badgeCount2',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            child: const Icon(Icons.sell),
          ),
          title: ("Favourates"),
          activeColorPrimary: Colors.red,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.settings),
          title: ("Settings"),
          activeColorPrimary: Color.fromARGB(255, 18, 18, 18),
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }

    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
