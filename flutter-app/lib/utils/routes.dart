//Flutter
import 'package:flutter/material.dart';
import 'package:pience/main.dart';

//App routes
import 'package:pience/screens/home_screen/home_screen.dart';

Map<String, WidgetBuilder> applicationRoutes(BuildContext context) {
  final routes = {
    '/': (BuildContext context) => Pience(),
    Home.id: (BuildContext context) => Home(),
  };

  return routes;
}