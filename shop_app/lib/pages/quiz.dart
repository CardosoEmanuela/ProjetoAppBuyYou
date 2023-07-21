import 'package:flutter/material.dart';
import 'package:shop_app/util/componentes_gerais.dart';
import 'package:shop_app/pages/escolha_marca.dart';

class StyleQuiz extends StatefulWidget {
  @override
  _StyleQuizAppState createState() => _StyleQuizAppState();
}

class _StyleQuizAppState extends State<StyleQuiz> {
  List<String> questions = [
    "Como você se sente em relação a estampas?",
    "Que tipo de peças você prefere usar no dia a dia?",
    "Você gosta de peças estruturadas ou mais fluidas?",
    "Que tipo de acessórios você costuma usar?",
    "Como você se sente em relação a roupas de grife?",
    "Em que ocasiões você mais gosta de se vestir?",
    "Você prefere roupas mais minimalistas ou com detalhes marcantes?",
    "Como você descreveria seu estilo de vida?"
  ];
  List<String> answers = [];
  int currentQuestionIndex = 0;

  List<List<String>> options = [
    [
      "Adoro estampas e as uso com frequência",
      "Gosto de algumas estampas específicas",
      "Prefiro roupas sem estampas",
    ],
    ["Vestidos", "Calças", "Saias", "Shorts"],
    ["Estruturadas", "Fluidas", "Depende da ocasião"],
    ["Colares", "Pulseiras", "Brincos", "Lenços", "Chapéus"],
    [
      "Adoro roupas de grife e invisto nelas",
      "Gosto de algumas marcas específicas",
      "Prefiro roupas acessíveis",
    ],
    ["Eventos formais", "Trabalho", "Casual no dia a dia"],
    ["Minimalistas", "Com detalhes marcantes", "Uma mistura de ambos"],
    [
      "Ativo e esportivo",
      "Profissional e corporativo",
      " Criativo e artístico",
      " Casual e descontraído"
    ],
  ];

  void submitAnswer(String answer) {
    setState(() {
      answers.add(answer);
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      }
    });
  }

  void limparCampos() {}

  void navigateBack() {
    Navigator.of(context).pushNamed('/LoginPage');
  }

  void navigateRight() {
    Navigator.of(context).pushNamed('/escolhaMarca');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: Componentes()
            .criaAppBar("Questionário Estilos", navigateBack, navigateRight),
        body: Container(
          color: Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questions[currentQuestionIndex],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: options[currentQuestionIndex].map((option) {
                  return ElevatedButton(
                    onPressed: () => submitAnswer(option),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
                    ),
                    child: Text(
                      option,
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (currentQuestionIndex < questions.length - 1) {
                    setState(() {
                      currentQuestionIndex++;
                    });
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EscolhaMarca(),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(0, 0, 0, 1000),
                  onPrimary: Color.fromARGB(0, 0, 0, 1000),
                ),
                child: Text(
                  currentQuestionIndex < questions.length - 1 ? '' : 'Submit',
                  style: TextStyle(color: Color.fromARGB(0, 0, 0, 1000)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
