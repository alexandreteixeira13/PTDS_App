import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ptdsapp/introsistpage.dart';
import 'package:ptdsapp/tutorialclass.dart';
import 'package:ptdsapp/fichamanupage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: FichaManuPage(),
  ));
}

class FichaManuPage extends StatelessWidget {
  const FichaManuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final altura =
        MediaQuery.of(context).size.height; // contador de altura da tela
    final largura = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 19, 19, 19),
          drawer: Drawer(
            backgroundColor: const Color.fromARGB(255, 20, 20, 20),
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    "Criação de ficha manual",
                    style: GoogleFonts.homenaje(
                        textStyle: const TextStyle(color: Colors.white)),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FichaManuPage()));
                  },
                ),
                ListTile(
                  title: Text(
                    "Criação de ficha automatica",
                    style: GoogleFonts.homenaje(
                        textStyle: const TextStyle(color: Colors.white)),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Introdução ao sistema",
                    style: GoogleFonts.homenaje(
                        textStyle: const TextStyle(color: Colors.white)),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntroSistPage()));
                  },
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
              child: Stack(
            children: [
              const DrawerButton(),
              Center(
                  child: Column(
                children: [
                  Gap(70),
                  Container(
                    width: largura * 0.85,
                    child: Text(
                      "Aqui vamos entender como funciona a criação de um persoangem",
                      style: GoogleFonts.homenaje(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 20)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Gap(15),
                  Container(
                    width: largura * 0.85,
                    child: Text(
                      "Mas antes de tudo, aqui vai uma “dica de mestre”, antes de sair vendo como se faz um personagem e ir só pegando ideias do livro, lembre-se de mentalizar seu personagem antes. Qual o estilo dele, alguém mais carrancudo que gosta de usar os punhos? Ou alguém mais delicado que gosta de mexer com tecidos? Ele é alguém que usa mais a cabeça? Ou é alguém mais voltado para as emoções? Qual a profissão dele?",
                      style: GoogleFonts.homenaje(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 20)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Gap(15),
                  Container(
                    width: largura * 0.85,
                    child: Text(
                      "Parece algo simples, mas isso se torna uma mão na roda depois, afinal, é mais fácil procurar nas regras algo que se encaixe na sua ideia, do que a partir das regras, ter uma ideia.",
                      style: GoogleFonts.homenaje(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 20)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Gap(15),
                  Container(
                    width: largura * 0.85,
                    child: Text(
                      "Lembrando que aqui, é um “tutorial’ para ser feito junto do livro, por tanto, lembre-se de abrir o livro e ler aos poucos, sempre pensando com calma quanto às decisões tomadas.",
                      style: GoogleFonts.homenaje(
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 20)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Gap(20),
                  Container(
                    width: largura * 0.75,
                    height: 50,
                    color: const Color.fromARGB(255, 42, 42, 42),
                  )
                ],
              ))
            ],
          ))),
    );
  }
}
