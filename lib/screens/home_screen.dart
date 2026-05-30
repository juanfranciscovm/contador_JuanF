import "package:contador_JuanF/routes/app_routes.dart";
import 'package:contador_JuanF/screens/contador_screen.dart';
import 'package:contador_JuanF/screens/datos_dev_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromARGB(255, 96, 145, 252),
        centerTitle: false,
        title: const Text("  › HOME", textAlign: TextAlign.left),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight(1000),
          fontFamily: "Peanuts",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),

        child: Column(
          children: [
            const Text(
              "¡Bienvenido al SUPERCALIFRAGILISTICONTADOR!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontFamily: "Nintendo"),
            ),
            const SizedBox(height: 160),

            Image.asset(
              //imagen snoopy
              "assets/images/snoopyPC.png",
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 40),

            ElevatedButton(
              //boton contador
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 96, 145, 252),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContadorScreen(),
                  ),
                );
              },
              child: const Text(
                "Ir al contador",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Peanuts",
                  fontWeight: FontWeight(1000),
                ),
              ),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              //boton datos dev
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DatosDevScreen(),
                  ),
                );
              },
              child: const Text(
                "Datos del dev",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Peanuts",
                  fontWeight: FontWeight(1000),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
