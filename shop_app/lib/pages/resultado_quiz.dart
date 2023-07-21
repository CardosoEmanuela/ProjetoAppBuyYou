import 'package:flutter/material.dart';
import 'package:shop_app/util/componentes_gerais.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  void limparCampos() {}

  void navigateBack() {
    Navigator.of(context).pushNamed('/StyleQuiz');
  }

  void navigateRight() {
    Navigator.of(context).pushNamed('/HomeScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
      appBar: Componentes().criaAppBar("Cadastro", navigateBack, navigateRight),
      floatingActionButton: FloatingActionButton(
        onPressed: limparCampos,
        backgroundColor: Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
        child: Icon(Icons.refresh),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(1)),
            Image.asset(
              "assets/images/logo.png",
              width: 200,
              height: 200,
            ),
            SizedBox(height: 10),
            Text(
              "Estilo tradicional (clássico)",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Maior preferência por peças mais clássicas e, muitas vezes, discretas.\n\nCortes: mais retos\nTecidos: mais estruturados\nCores: sóbrias\nAcessórios: mais sutis\n\nMensagem transmitida:\n\nRespeitabilidade\nConservadorismo\nGosto refinado\nOrganização\nLealdade\nFormalidade\nResponsabilidade",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                navigateRight();
              },
              child: Text(
                "Experiência",
                style: TextStyle(
                  color: Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
