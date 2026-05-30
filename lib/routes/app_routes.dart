import "package:contador_JuanF/screens/contador_screen.dart";
import "package:contador_JuanF/screens/datos_dev_screen.dart";
import "package:flutter/material.dart";
import "package:contador_JuanF/screens/app_screens.dart";
import "package:contador_JuanF/models/menu_options.dart";

class AppRoutes {
  static const initialRoute = "/home";

  static Map<String, Widget Function(BuildContext)> routes = {
    "/home": (BuildContext context) => const HomeScreen(),
    "/contador": (BuildContext context) => const ContadorScreen(),
    "/datos_dev": (BuildContext context) => const DatosDevScreen(),
  };

  static final menuOptions = <MenuOptions>[
    MenuOptions(
      route: "/contador",
      name: "Contador",
      icon: Icons.timer,
      screen: const ContadorScreen(),
    ),
  ];
}
