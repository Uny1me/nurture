import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nurture/components/custom_app_bar.dart';
import 'package:nurture/screens/daily_check_in.dart';
import 'package:nurture/screens/home.dart';

class RouteServices {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    // final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case "/check-in":
        return CupertinoPageRoute(builder: (_) {
          return const MoodCheckIn();
        });
      // case '/category':
      //   if (args is Map) {
      //     return CupertinoPageRoute(builder: (_) {
      //       return CategoryShop(category: args['category'], id: args['id']);
      //     });
      //   }
      //   return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        appBar: CustomAppBar(
          title: 'Loading',
        ),
        body: Center(child: HomeScreen()),
      );
    });
  }
}
