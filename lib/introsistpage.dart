import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ptdsapp/homepage.dart';
import 'package:ptdsapp/fichamanupage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: IntroSistPage(),
  ));
}

class IntroSistPage extends StatelessWidget {
  const IntroSistPage({super.key});

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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/int_sistema.png",
              fit: BoxFit.fill,
            ),
          ),
          const DrawerButton(),
          Container(
            width: largura,
            height: altura,
            child: Column(
              children: [
                Gap(50),
                Container(
                  width: largura * 0.75,
                  child: Text(
                    "Seja bem vindo à Por Trás da Sorte. Para aqueles que não têm muito tempo para ler, esse sistema foi feito especificamente para tratar temas focados em combate e exploração (principalmente em um ambiente medieval com masmorras), portanto, a parte de roleplay ou de investigação ficará a cargo dos jogadores, e mestre, da campanha.",
                    style: GoogleFonts.homenaje(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(8),
                Container(
                  width: largura * 0.75,
                  child: Text(
                    'Respondendo a uma dúvida simples, mas pertinente, este sistema foi criado com a ideia de retratar uma campanha, curta, em um ambiente dark-fantasy, então é notável que os personagens dos jogadores têm poucos pontos de vida, além de outras mecânicas, para trazer a ideia de "punitivo" ao jogo. Porém, isso não significa que o jogo será chato, significa apenas que será mais desafiador para os jogadores. Portanto, prepare-se.',
                    style: GoogleFonts.homenaje(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(8),
                Container(
                  width: largura * 0.75,
                  child: Text(
                    'Este sistema foi feito para ser simples, porém completo, e, pretensiosamente, será atualizado aos poucos assim que possível e necessário.',
                    style: GoogleFonts.homenaje(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(8),
                Container(
                  width: largura * 0.75,
                  child: Text(
                    'Foi utilizado como referência os sistemas: D&D, Tormenta 20, Call of Cthulhu, com menções honrosas à Feitiçeiros e Maldições, por Setsugiri.',
                    style: GoogleFonts.homenaje(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(8),
                Container(
                  width: largura * 0.75,
                  child: Text(
                    'Em referência ao cenário, Por Trás da Sorte foi fortemente baseado em Darkest Dungeon, por Red Hook Studios.',
                    style: GoogleFonts.homenaje(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(45),
                Container(
                  width: largura * 0.75,
                  child: Text(
                    'Ok ok, acredito que já demos todas as prévias necessárias sobre o sistema, esperamos que curta e tenha uma boa jogatina.',
                    style: GoogleFonts.homenaje(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 25)),
                    textAlign: TextAlign.left,
                  ),
                ),
                Gap(20),
                Container(
                  width: largura * 0.75,
                  child: Text(
                    'Lembre-se, se divertir é o foco.',
                    style: GoogleFonts.homenaje(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: largura * 0.75,
                  child: Text(
                    'Bem vindo, à Por Trás da Sorte.',
                    style: GoogleFonts.homenaje(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    textAlign: TextAlign.left,
                  ),
                ),
                Gap(60),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.white,
                      minimumSize: Size(200, 75),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    
                    child: Text(
                      "Voltar",
                      style: GoogleFonts.leagueGothic(
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 56, 3, 116)),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
