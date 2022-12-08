import 'package:adminka_project/screens/main_dashboard.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static final MyRoutes _instance = MyRoutes.init();
  static MyRoutes get instance => MyRoutes._instance;
  MyRoutes.init();
  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => const Dashboard());
    }
    return null;
  }
}
