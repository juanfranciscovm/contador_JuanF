import "package:contador_JuanF/routes/app_routes.dart";
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        title: const Text("Home - SupercalifragilistiContador"),
      ),
    );
  }
}
