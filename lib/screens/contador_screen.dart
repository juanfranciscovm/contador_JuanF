import "package:flutter/material.dart";

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({super.key});
  @override
  State<ContadorScreen> createState() => _ContadorScreen();
}

class _ContadorScreen extends State<ContadorScreen>
    with TickerProviderStateMixin {
  int valor = 0;

  void aumentar() {
    valor++;
    setState(() {});
  }

  void restar() {
    if (valor > 0) {
      valor--;
      setState(() {});
    }
  }

  void reset() {
    valor = 0;
    setState(() {});
  }

  //controlador de la animacion
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  //animacion
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Durations.medium4,
    );
    _scaleAnimation = Tween<double>(begin: 1, end: 1.4).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.elasticInOut),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/snoopyfondo.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ScaleTransition(
                    scale: _scaleAnimation,
                    child: Image.asset(
                      "assets/images/snoopyFLY.png",
                      height: 230,
                      fit: BoxFit.contain,
                    ),
                  ),

                  const SizedBox(height: 40),
                  Text(
                    "El valor del contador es:",
                    style: TextStyle(fontFamily: "Peanuts", fontSize: 24),
                  ),
                  Text(
                    "$valor",
                    style: TextStyle(
                      fontFamily: "Peanuts",
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),

            Positioned(
              bottom: 70,
              left: 10,
              right: 10,
              //todos los botones
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    //boton suma
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 126, 255, 156),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                    ),
                    onPressed: () {
                      aumentar();
                      _animationController.forward();
                    },
                    child: const Text(
                      "+",
                      style: TextStyle(
                        color: Color.fromARGB(255, 79, 74, 92),
                        fontSize: 23,
                        fontFamily: "Peanuts",
                        fontWeight: FontWeight(1000),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  ElevatedButton(
                    //boton resta
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 251, 116, 116),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                    ),
                    onPressed: () {
                      restar();
                      _animationController.reverse();
                    },
                    child: const Text(
                      "―",
                      style: TextStyle(
                        color: Color.fromARGB(255, 79, 74, 92),
                        fontSize: 22,
                        fontFamily: "Peanuts",
                        fontWeight: FontWeight(1000),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  ElevatedButton(
                    //boton reset
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 254, 250, 124),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                    ),
                    onPressed: () {
                      reset();
                      _animationController.reset();
                    },
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        color: Color.fromARGB(255, 79, 74, 92),
                        fontSize: 20,
                        fontFamily: "Peanuts",
                        fontWeight: FontWeight(1000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
