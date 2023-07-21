import 'package:flutter/material.dart';
import 'package:shop_app/util/componentes_gerais.dart';

class CadastroCliente extends StatefulWidget {
  const CadastroCliente({Key? key}) : super(key: key);

  @override
  State<CadastroCliente> createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  GlobalKey<FormState> formController = GlobalKey<FormState>();

  cadastrar() {
    String nome = nomeController.text;
    String email = emailController.text;
    String senha = senhaController.text;
    Navigator.of(context).pushNamed('/LoginPage');
  }

  String msg = "Informe os seus dados";

  limparCampos() {
    nomeController.text = "";
    emailController.text = "";
    senhaController.text = "";
    setState(() {
      msg = "Informe os dados";
      formController = GlobalKey<FormState>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().appBar("Cadastre-se"),
      floatingActionButton: FloatingActionButton(
        onPressed: limparCampos,
        backgroundColor: (Color.fromARGB(0xFF, 0X18, 0x1F, 0X27)),
        child: Icon(Icons.refresh),
      ),
      body: Container(
        color: Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(40.0),
                  child: Form(
                    key: formController,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Image.asset(
                          "assets/images/logo.png",
                          width: 150,
                          height: 150,
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Componentes().criaInputTexto(
                          TextInputType.text,
                          'Nome',
                          nomeController,
                          false,
                          'Informe o nome',
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Componentes().criaInputTexto(
                          TextInputType.text,
                          'E-mail',
                          emailController,
                          false,
                          'Informe o e-mail',
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Componentes().criaInputTexto(
                          TextInputType.number,
                          'Senha',
                          senhaController,
                          true,
                          'Informe a senha',
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                        ),
                        CustomButton(
                          text: 'Cadastrar',
                          onPressed: cadastrar,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
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
