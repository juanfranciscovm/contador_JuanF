import "package:flutter/material.dart";
import "package:contador_JuanF\lib\screens\app_screens.dart";

class AppRoutes {
  static const initialRoute = "/home";

  static Map<String, Widget Function(BuildContext)> routes = {
    "/home": (BuildContext context) => const HomeScreen(),
  };
}
