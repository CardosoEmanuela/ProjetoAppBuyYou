import 'package:flutter/material.dart';
import 'package:shop_app/util/componentes_gerais.dart';

class EscolhaMarca extends StatefulWidget {
  const EscolhaMarca({Key? key}) : super(key: key);

  @override
  State<EscolhaMarca> createState() => _EscolhaMarcaState();
}

class _EscolhaMarcaState extends State<EscolhaMarca> {
  void limparCampos() {
   
  }

  resultado() {
    Navigator.of(context).pushNamed('/ResultPage');
  }

  void navigateBack() {
    Navigator.of(context).pushNamed('/StyleQuiz');
  }

  void navigateRight() {
    Navigator.of(context).pushNamed('/HomeScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBar(
        "Questionário Estilos",
        navigateBack,
        navigateRight,
      ),
      backgroundColor: Color.fromARGB(0xFF, 0x18, 0x1F, 0X27),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: Image.asset(
                          'assets/images/hering.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: Image.asset(
                          'assets/images/ca.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: Image.asset(
                          'assets/images/zara.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: Image.asset(
                          'assets/images/nike.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: Image.asset(
                          'assets/images/cityblue.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: Image.asset(
                          'assets/images/mormaii.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: Image.asset(
                          'assets/images/carmens-steffens.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomButton(
                text: 'Resultado',
                onPressed: resultado,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        primary: Colors.white,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
