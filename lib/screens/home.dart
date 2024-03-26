import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nurture/components/home/bottom_nav_icon.dart';
import 'package:nurture/config.dart';
import 'package:nurture/screens/for_you.dart';
import 'package:nurture/screens/self_help.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? linkMessage;
  bool isCreatingLinks = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> buildScreens() {
      return [
        const ForYou(),
        const ForYou(),
        const SelfHelp(),
        const ForYou(),
        const ForYou(),
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          opacity: 1,
          icon: BottomNavIcon(
            active: true,
            icon: Icon(
              CupertinoIcons.house_fill,
              color: GlobalStyle().primaryColor,
            ),
            imageWidth: 24.0,
            text: 'For You',
          ),
          inactiveIcon: BottomNavIcon(
            active: false,
            icon: Icon(
              CupertinoIcons.house_alt,
              color: GlobalStyle().primaryColor,
            ),
            imageWidth: 24.0,
            text: 'For You',
          ),
          title: ("Home"),
          activeColorPrimary: Colors.transparent,
          // userPrefenceID == '45' ? Colors.black : Colors.pink,
          inactiveColorPrimary: Colors.transparent,
        ),
        PersistentBottomNavBarItem(
          icon: BottomNavIcon(
            active: true,
            icon: Icon(
              CupertinoIcons.question_circle_fill,
              color: GlobalStyle().primaryColor,
            ),
            topSpacing: 3,
            imageWidth: 28.0,
            middleSpacing: 3,
            text: 'Help',
          ),
          inactiveIcon: BottomNavIcon(
            active: false,
            icon: Icon(
              CupertinoIcons.question_circle,
              color: GlobalStyle().primaryColor,
            ),
            topSpacing: 3,
            imageWidth: 28.0,
            middleSpacing: 3,
            text: 'Help',
          ),
          title: ("Shop"),
          activeColorPrimary: Colors.transparent,
          inactiveColorPrimary: Colors.transparent,
        ),
        PersistentBottomNavBarItem(
          icon: BottomNavIcon(
            active: true,
            icon: Icon(
              CupertinoIcons.person_add_solid,
              color: GlobalStyle().primaryColor,
            ),
            middleSpacing: 3,
            text: 'Self',
          ),
          inactiveIcon: BottomNavIcon(
            active: false,
            icon: Icon(
              CupertinoIcons.person_add,
              color: GlobalStyle().primaryColor,
            ),
            topSpacing: 6,
            middleSpacing: 3,
            text: 'Self',
          ),
          activeColorPrimary: Colors.transparent,
          inactiveColorPrimary: Colors.transparent,
        ),
        PersistentBottomNavBarItem(
          icon: BottomNavIcon(
            active: true,
            icon: Icon(
              CupertinoIcons.chat_bubble_fill,
              color: GlobalStyle().primaryColor,
            ),
            text: 'Chat',
          ),
          inactiveIcon: BottomNavIcon(
            active: false,
            icon: Icon(
              CupertinoIcons.chat_bubble,
              color: GlobalStyle().primaryColor,
            ),
            text: 'Chat',
          ),
          title: "Chat",
          activeColorPrimary: Colors.transparent,
          inactiveColorPrimary: Colors.transparent,
        ),
        PersistentBottomNavBarItem(
          title: 'Profile',
          icon: BottomNavIcon(
            active: true,
            icon: Icon(
              CupertinoIcons.person_circle_fill,
              color: GlobalStyle().primaryColor,
            ),
            topSpacing: 6,
            middleSpacing: 3,
            text: 'Profile',
          ),
          inactiveIcon: BottomNavIcon(
            active: false,
            icon: Icon(
              CupertinoIcons.person_circle,
              color: GlobalStyle().primaryColor,
            ),
            text: 'Profile',
            topSpacing: 6,
            middleSpacing: 3,
          ),
          activeColorPrimary: Colors.transparent,
          inactiveColorPrimary: Colors.transparent,
        ),
      ];
    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: PersistentTabView(
        context,
        screens: buildScreens(),
        items: navBarsItems(),
        controller: controller,
        navBarHeight: 55,
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        padding: const NavBarPadding.symmetric(vertical: 0, horizontal: 0),
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.once,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 500),
        ),
        onItemSelected: ((index) async {}),
        navBarStyle: NavBarStyle.style5,
      ),
    );
  }
}
