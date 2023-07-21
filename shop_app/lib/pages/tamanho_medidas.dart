import 'package:flutter/material.dart';
import 'package:shop_app/util/componentes_gerais.dart';

void main() {
  runApp(const TamanhoMedidas());
}

class TamanhoMedidas extends StatefulWidget {
  const TamanhoMedidas({Key? key}) : super(key: key);

  @override
  State<TamanhoMedidas> createState() => _MyAppState();
}

class _MyAppState extends State<TamanhoMedidas> {
  TextEditingController alturaController = TextEditingController();
  TextEditingController larguraController = TextEditingController();
  TextEditingController cinturaController = TextEditingController();
  TextEditingController quadrilController = TextEditingController();
  TextEditingController controller = TextEditingController();

  GlobalKey<FormState> formController = GlobalKey<FormState>();

  String msgSuperior = "";
  String msgInferior = "";

  limparCampos() {
    alturaController.text = "";
    larguraController.text = "";
    cinturaController.text = "";
    quadrilController.text = "";
    setState(() {
      msgSuperior = "";
      msgInferior = "";
      formController = GlobalKey<FormState>();
    });
  }

  calcularTamanho() {
    double altura = double.tryParse(alturaController.text) ?? 0;
    double largura = double.tryParse(larguraController.text) ?? 0;
    double cintura = double.tryParse(cinturaController.text) ?? 0;
    double quadril = double.tryParse(quadrilController.text) ?? 0;
    setState(() {});

    if (altura >= 67 && largura >= 50) {
      if (altura >= 73 && largura >= 59) {
        setState(() {
          msgSuperior = "Tamanho Superior: GG";
        });
      } else if (altura >= 71 && largura >= 56) {
        setState(() {
          msgSuperior = "Tamanho Superior: G";
        });
      } else if (altura >= 70 && largura >= 53) {
        setState(() {
          msgSuperior = "Tamanho Superior: M";
        });
      } else if (altura >= 68 && largura >= 51) {
        setState(() {
          msgSuperior = "Tamanho Superior: P";
        });
      } else {
        setState(() {
          msgSuperior = "Tamanho Superior: PP";
        });
      }
    } else {
      setState(() {
        msgSuperior = "Tamanho Indefinido";
      });
    }

    if (cintura >= 62 && cintura <= 66 && quadril >= 85 && quadril <= 89) {
      setState(() {
        msgInferior = "Tamanho Inferior: 32";
      });
    } else if (cintura >= 66 &&
        cintura <= 70 &&
        quadril >= 89 &&
        quadril <= 93) {
      setState(() {
        msgInferior = "Tamanho Inferior: 34";
      });
    } else if (cintura >= 70 &&
        cintura <= 74 &&
        quadril >= 93 &&
        quadril <= 97) {
      setState(() {
        msgInferior = "Tamanho Inferior: 36";
      });
    } else if (cintura >= 74 &&
        cintura <= 78 &&
        quadril >= 97 &&
        quadril <= 101) {
      setState(() {
        msgInferior = "Tamanho Inferior: 38";
      });
    } else if (cintura >= 78 &&
        cintura <= 82 &&
        quadril >= 101 &&
        quadril <= 105) {
      setState(() {
        msgInferior = "Tamanho Inferior: 40";
      });
    } else if (cintura >= 82 &&
        cintura <= 86 &&
        quadril >= 105 &&
        quadril <= 109) {
      setState(() {
        msgInferior = "Tamanho Inferior: 42";
      });
    } else if (cintura >= 86 &&
        cintura <= 90 &&
        quadril >= 109 &&
        quadril <= 113) {
      setState(() {
        msgInferior = "Tamanho Inferior: 44";
      });
    } else {
      setState(() {
        msgInferior = "Tamanho Indefinido";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
        appBar: Componentes()
            .criaAppBar("Tamanho medidas", navigateBack, navigateRight),
        floatingActionButton: FloatingActionButton(
          onPressed: limparCampos,
          backgroundColor: (Color.fromARGB(0xFF, 0X18, 0x1F, 0X27)),
          child: Icon(Icons.refresh),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formController,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Color.fromARGB(0xFF, 0x36, 0xFF, 0X47),
                    decoration: const InputDecoration(
                      labelText: 'Altura',
                      hintText: 'Informe a sua altura',
                      labelStyle:
                          TextStyle(color: Colors.white), // Cor do rótulo
                      hintStyle: TextStyle(
                          color: Colors.white), // Cor do texto de sugestão
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Cor da borda quando o campo está desabilitado
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Cor da borda quando o campo está em foco
                      ),
                    ),
                    controller: alturaController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, informe a altura';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: Colors.white), // Altere para a cor branca
                    cursorColor: Color.fromARGB(0xFF, 0x36, 0xFF, 0X47),
                    decoration: const InputDecoration(
                      labelText: 'Largura',
                      hintText: 'Informe a sua largura',
                      labelStyle:
                          TextStyle(color: Colors.white), // Cor do rótulo
                      hintStyle: TextStyle(
                          color: Colors.white), // Cor do texto de sugestão
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Cor da borda quando o campo está desabilitado
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Cor da borda quando o campo está em foco
                      ),
                    ),
                    controller: larguraController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, informe a medida de largura';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: Colors.white), // Altere para a cor branca
                    cursorColor: Color.fromARGB(0xFF, 0x36, 0xFF, 0X47),
                    decoration: const InputDecoration(
                      labelText: 'Cintura',
                      hintText: 'Informe a sua medida de cintura',
                      labelStyle:
                          TextStyle(color: Colors.white), // Cor do rótulo
                      hintStyle: TextStyle(
                          color: Colors.white), // Cor do texto de sugestão
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Cor da borda quando o campo está desabilitado
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Cor da borda quando o campo está em foco
                      ),
                    ),
                    controller: cinturaController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, informe a medida de cintura';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: Colors.white), // Altere para a cor branca
                    cursorColor: Color.fromARGB(0xFF, 0x36, 0xFF, 0X47),
                    decoration: const InputDecoration(
                      labelText: 'Quadril',
                      hintText: 'Informe a sua medida de quadril',
                      labelStyle:
                          TextStyle(color: Colors.white), // Cor do rótulo
                      hintStyle: TextStyle(
                          color: Colors.white), // Cor do texto de sugestão
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Cor da borda quando o campo está desabilitado
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Cor da borda quando o campo está em foco
                      ),
                    ),
                    controller: quadrilController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, informe a medida de quadril';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: calcularTamanho,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Text(
                      "Calcular tamanho",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 16.0,
                    shadowColor: Color.fromARGB(0xFF, 0xFF, 0x36, 0X47),
                    margin: EdgeInsets.all(5),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(5)),
                              const SizedBox(height: 15),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/sizebay.png',
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        msgSuperior,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Arial',
                                        ),
                                      ),
                                      Text(
                                        msgInferior,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Arial',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void navigateBack() {
    Navigator.of(context).pushNamed('/LoginPage');
  }

  void navigateRight() {
    Navigator.of(context).pushNamed('/Cromatico');
  }
}
