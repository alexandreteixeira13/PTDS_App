import 'package:flutter/material.dart';
import 'package:ptdsapp/homepage.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset('images/ficha_de_bolso.png'),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: const Text('Entrar'),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
