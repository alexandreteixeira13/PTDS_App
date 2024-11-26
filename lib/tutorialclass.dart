import 'package:url_launcher/url_launcher.dart';

class Tutorial {
  late String titulo;
  late String descricao;

  Tutorial(this.titulo, this.descricao);

  static void RedirectLivro() async {
    if (!await launchUrl(Uri.parse(
        "https://www.canva.com/design/DAF8owMLMF0/ZQGrE-jnp3xS6VBwsGakaw/edit?utm_content=DAF8owMLMF0&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton"))) {
      throw 'Não foi possivel prosseguir';
    }
  }

  static void RedirectArmas() async {
    if (!await launchUrl(Uri.parse(
        "https://docs.google.com/spreadsheets/d/1cKWmCIobsmuutgJACTEed-xrPd1_8WsbFweyAqmUyoQ/edit?usp=sharing"))) {
      throw 'Não foi possivel prosseguir';
    }
  }

  static void RedirectPratica() async{
    if(!await launchUrl(Uri.parse("https://docs.google.com/spreadsheets/d/1uxm6AHZWj68BmDupM-iKFv3LTFJ1U1zqlZbieH9tJeA/edit?usp=sharing"))){
        throw 'Não foi possivel prosseguir';
    }
  }
}
