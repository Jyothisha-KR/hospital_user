import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_user/dashboard/dashboard.dart';
import 'package:hospital_user/login/login.dart';
import 'package:hospital_user/routes/route_constants.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings route) {
    switch (route.name) {
      case RouteConstants.userSignup:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );

      case RouteConstants.userDashboard:
        return MaterialPageRoute(
          builder: (context) =>const Dashboard(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
    }
  }
}
