import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({super.key});
  @override
  State<ContadorScreen> createState() => _ContadorScreen();
}

class _ContadorScreen extends State<ContadorScreen> {
  int valor = 0;

  void aumentar() {
    valor++;
    setState(() {});
  }

  void restar() {
    valor--;
    setState(() {});
  }

  void reset() {
    valor = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromARGB(255, 96, 145, 252),
        centerTitle: false,
        title: const Text("› CONTADOR", textAlign: TextAlign.left),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight(1000),
          fontFamily: "Peanuts",
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              //imagen snoopy matematico
              "assets/images/snoopyMAT.png",
              height: 230,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 40),

            Text(
              "El valor del contador es:",
              style: TextStyle(fontFamily: "Peanuts"),
            ),
            Text(
              "$valor",
              style: TextStyle(
                fontFamily: "Peanuts",
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),

            ElevatedButton(
              //boton suma
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 57, 243, 82),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              onPressed: (aumentar),
              child: const Text(
                "+",
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
              //boton resta
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 71, 71),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              onPressed: (restar),
              child: const Text(
                "-",
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
              //boton reset
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 120, 71, 242),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              onPressed: (reset),
              child: const Text(
                "Reset",
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
