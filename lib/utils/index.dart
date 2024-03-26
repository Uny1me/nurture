import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

void navigateNoBottomNav(Widget widget, BuildContext context) {
  PersistentNavBarNavigator.pushNewScreen(
    context,
    screen: widget,
    withNavBar: false,
    pageTransitionAnimation: PageTransitionAnimation.cupertino,
  );
}

void navigateBottomNav(Widget widget, BuildContext context) {
  PersistentNavBarNavigator.pushNewScreen(
    context,
    screen: widget,
    withNavBar: true,
    pageTransitionAnimation: PageTransitionAnimation.cupertino,
  );
}
