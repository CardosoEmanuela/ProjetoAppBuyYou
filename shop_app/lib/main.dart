import 'package:flutter/material.dart';
import 'package:shop_app/pages/cadastro_cliente.dart';
import 'package:shop_app/pages/circulo_cromatico.dart';
import 'package:shop_app/pages/login.dart';
import 'package:shop_app/pages/tamanho_medidas.dart';
import 'package:shop_app/pages/escolha_marca.dart';
import 'package:shop_app/pages/quiz.dart';
import 'package:shop_app/pages/home.dart';
import 'package:shop_app/pages/resultado_quiz.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/LoginPage',
      routes: {
        '/CadastroCliente': (context) => CadastroCliente(),
        '//HomeScreen': (context) => HomeScreen(),
        '/TamanhoMedidas': (context) => TamanhoMedidas(),
        '/LoginPage': (context) => LoginPage(),
        '/StyleQuiz': (context) => StyleQuiz(),
        '/Cromatico': (context) => Cromatico(),
        '/escolhaMarca': (context) => EscolhaMarca(),
        '/ResultPage': (context) => ResultPage(),
      
      },
    );
  }
}
