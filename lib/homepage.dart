// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ptdsapp/introsistpage.dart';
import 'package:ptdsapp/tutorialclass.dart';
import 'package:ptdsapp/fichamanupage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {

  
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        child: ListView(
          children: [
            ListTile(
              title: Text("Criação de ficha manual",
                  style: GoogleFonts.homenaje(
                      textStyle: const TextStyle(color: Colors.white)),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const FichaManuPage()));
              },
            ),
            ListTile(
              title: Text("Criação de ficha automatica",
                  style: GoogleFonts.homenaje(
                      textStyle: const TextStyle(color: Colors.white)),),
            ),
            ListTile(
              title: Text("Introdução ao sistema",
                  style: GoogleFonts.homenaje(
                      textStyle: const TextStyle(color: Colors.white)),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> IntroSistPage()));
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/ficha_de_bolso.png",
              fit: BoxFit.cover,
            ),
          ),
          const DrawerButton(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 350, 60),
              child: GestureDetector(
                onTap: () {
                  Tutorial.RedirectLivro();
                },
                child: RichText(
                    text: const TextSpan(
                        text: 'Visite o livro original ',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        children: [
                      TextSpan(
                          text: "aqui",
                          style: TextStyle(
                              color: Colors.yellow,
                              decoration: TextDecoration.underline, fontSize: 20))
                    ])),
              ),
            ),
          )
        ],
      ),
    ));
  }
}


