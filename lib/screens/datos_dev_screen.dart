import 'package:flutter/material.dart';

class DatosDevScreen extends StatelessWidget {
  const DatosDevScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromARGB(255, 96, 145, 252),
        centerTitle: false,
        title: const Text(
          "› DATOS DEL DESARROLLADOR",
          textAlign: TextAlign.left,
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight(1000),
          fontFamily: "Peanuts",
        ),
      ),
    );
  }
}
